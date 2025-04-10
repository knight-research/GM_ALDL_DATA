# gui/gui_dashboard.py
"""
Dashboard GUI for ALDL reader with profile selection, logging, and diagnostics.
"""
try:
    with open("version.txt", "r") as f:
        version = f.read().strip()
except FileNotFoundError:
    version = "unknown"
last_change = "2025-04-10-2100"

import tkinter as tk
from tkinter import ttk, messagebox
import os, sys, platform, csv, time, serial
sys.path.append("..")
from aldl import ads_parser

ADS_DIR = "./profiles"
LOG_FILE = "ecu_log.csv"
MAX_RETRIES = 5

class Dashboard(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("KIDD Digital Dashboard")
        self.geometry("1920x1080")
        self.resizable(False, False)
        self.configure(bg="black")
        self.selected_profile = tk.StringVar()
        self.simulate = tk.BooleanVar(value=True)
        self.logging = tk.BooleanVar(value=False)
        self.manual_port = tk.StringVar()
        self.labels = {}
        self.data = {}
        self.value_map = []
        self.serial_port = None
        self.status = tk.StringVar(value="Status: Not connected")
        self.retry_count = 0
        self.after_id = None
        self.create_widgets()
        self.refresh_profiles()
        self.refresh_ports()

    def create_widgets(self):
        layout = tk.Frame(self, bg="black")
        layout.pack(fill="both", expand=True, padx=20, pady=20)
        config = tk.Frame(layout, bg="black")
        config.grid(row=0, column=0, sticky="n")
        ttk.Label(config, text=(version, last_change), font=("Arial", 14)).pack(anchor="w", pady=5)
        ttk.Label(config, text="Select vehicle profile:", font=("Arial", 14)).pack(anchor="w", pady=5)
        self.profile_menu = ttk.Combobox(config, textvariable=self.selected_profile, state="readonly", width=40)
        self.profile_menu.pack(anchor="w", pady=5)
        self.profile_menu.bind("<<ComboboxSelected>>", lambda e: self.load_profile())
        ttk.Checkbutton(config, text="Enable simulation mode", variable=self.simulate).pack(anchor="w", pady=5)
        ttk.Checkbutton(config, text="Enable data logging (CSV)", variable=self.logging).pack(anchor="w", pady=5)
        ttk.Label(config, text="Serial port (optional):").pack(anchor="w", pady=2)
        self.port_menu = ttk.Combobox(config, textvariable=self.manual_port, state="readonly", width=40)
        self.port_menu.pack(anchor="w", pady=2)
        ttk.Button(config, text="Refresh ports", command=self.refresh_ports).pack(anchor="w", pady=5)
        ttk.Button(config, text="Retry connection", command=self.reset_connection).pack(anchor="w", pady=5)
        ttk.Button(config, text="Run diagnostic test", command=self.run_diagnostic).pack(anchor="w", pady=5)
        self.status_label = ttk.Label(config, textvariable=self.status, font=("Arial", 10))
        self.status_label.pack(anchor="w", pady=10)
        self.error_output = tk.Text(config, height=8, font=("Courier", 9), bg="black", fg="red")
        self.error_output.pack(fill="x", pady=10)
        sysinfo = ttk.Label(config, text=f"System: {platform.system()} - Python {platform.python_version()}", font=("Arial", 9))
        sysinfo.pack(anchor="w", pady=5)
        self.data_frame = tk.Frame(layout, bg="black")
        self.data_frame.grid(row=0, column=1, sticky="n", padx=(50, 0))
        self.data_col1 = tk.Frame(self.data_frame, bg="black")
        self.data_col2 = tk.Frame(self.data_frame, bg="black")
        self.data_col1.grid(row=0, column=0, sticky="n")
        self.data_col2.grid(row=0, column=1, sticky="n", padx=(30, 0))

    def refresh_profiles(self):
        if not os.path.exists(ADS_DIR): os.makedirs(ADS_DIR)
        ads_files = [f for f in os.listdir(ADS_DIR) if f.endswith(".ads")]
        self.profile_menu['values'] = ads_files
        if ads_files:
            self.profile_menu.current(0)
            self.load_profile()

    def refresh_ports(self):
        ports = [f"COM{i}" for i in range(1, 20)] if platform.system() == "Windows" else             [f"/dev/{d}" for d in os.listdir("/dev") if d.startswith("ttyUSB") or d.startswith("ttyACM")]
        self.port_menu['values'] = ports
        if ports:
            self.port_menu.current(0)

    def load_profile(self):
        for w in self.data_col1.winfo_children(): w.destroy()
        for w in self.data_col2.winfo_children(): w.destroy()
        profile = self.selected_profile.get()
        if not profile: messagebox.showwarning("No profile", "Please select a profile."); return
        self.value_map = ads_parser.parse_ads(os.path.join(ADS_DIR, profile))
        self.data = {}; self.labels = {}
        half = (len(self.value_map) + 1) // 2
        for i, val in enumerate(self.value_map):
            name = val["name"]
            self.data[name] = 0.0
            frame = self.data_col1 if i < half else self.data_col2
            lbl = ttk.Label(frame, text=f"{name}: 0.0 {val['unit']}", font=("Courier", 14), background="black", foreground="white")
            lbl.pack(anchor="w", pady=2)
            self.labels[name] = (lbl, val["unit"])
        self.status.set(f"Profile '{profile}' loaded – establishing connection…")
        self.retry_count = 0
        self.update_loop()

    def connect_to_device(self):
        import time
        port = self.manual_port.get() or ("COM3" if platform.system() == "Windows" else "/dev/ttyUSB0")
        try:
            # Use short test first (like DIAG)
            with serial.Serial(port, 8192, timeout=0.5) as test_serial:
                time.sleep(0.2)
                test_serial.write(b"\xF4\x56\x01\xB4")
                response = test_serial.read(64)
                self.error_output.insert("end", f"[CONNECT TEST] Response: {response.hex()}\n")
                self.error_output.see("end")
                if len(response) < 5:
                    raise Exception("Response too short or empty.")

            # Reopen the port for long-term use
            self.serial_port = serial.Serial(port, 8192, timeout=0.5)
            self.status.set(f"Connected to {port} – ECU responded")
            self.simulate.set(False)
            self.update_loop()
        except Exception as e:
            self.status.set("Failed to connect – switched to simulation")
            self.error_output.insert("end", f"[CONNECT ERROR] {e}\n")
            self.error_output.see("end")
            self.simulate.set(True)
            self.update_loop()

    def update_loop(self):
        row = {"timestamp": time.strftime("%Y-%m-%d %H:%M:%S")}
        for val in self.value_map:
            key = val["name"]
            self.data[key] = self.data[key] + 0.3 if self.simulate.get() else self.read_from_device(val)
            lbl, unit = self.labels[key]
            lbl.config(text=f"{key}: {self.data[key]:.1f} {unit}")
            row[key] = f"{self.data[key]:.2f}"
        if self.logging.get(): self.write_log(row)
        self.after_id = self.after(1000, self.update_loop)

    def reset_connection(self):
        if self.after_id:
            self.after_cancel(self.after_id)
            self.after_id = None
        self.serial_port = None
        self.retry_count = 0
        self.simulate.set(False)
        self.status.set("Status: Retrying connection…")
        self.connect_to_device()

    def read_from_device(self, val):
        try:
            if self.serial_port is None:
                port = self.manual_port.get() or ("COM3" if platform.system() == "Windows" else "/dev/ttyUSB0")
                self.serial_port = serial.Serial(port, 8192, timeout=1)
                self.status.set(f"Status: Connected ({port})")
            self.serial_port.write(b"\xF4\x56\x01")
            self.error_output.insert("end", "[READ] Sent request to ECU\n")
            response = self.serial_port.read(64)
            self.error_output.insert("end", f"[READ] Response: {response.hex()}\n")
            self.error_output.see("end")
            idx = int(val["byte"])
            if idx < len(response):
                raw = response[idx]
                return raw * float(val.get("factor", 1.0)) + float(val.get("offset", 0.0))
        except Exception as e:
            self.status.set(f"Status: Connection error – Attempt {self.retry_count + 1}/{MAX_RETRIES}")
            self.error_output.insert("end", f"{time.strftime('%H:%M:%S')} - {e}\n")
            self.error_output.see("end")
            self.serial_port = None
            self.retry_count += 1
            if self.retry_count >= MAX_RETRIES:
                self.simulate.set(True)
                self.status.set("Status: Connection failed – switched to simulation mode")
        return 0.0

    def write_log(self, row):
        file_exists = os.path.isfile(LOG_FILE)
        with open(LOG_FILE, mode="a", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=row.keys())
            if not file_exists:
                writer.writeheader()
            writer.writerow(row)

    def run_diagnostic(self):
        port = self.manual_port.get() or ("COM3" if platform.system() == "Windows" else "/dev/ttyUSB0")
        self.error_output.insert("end", f"\n[DIAG] Opening {port} at 8192 baud...\n")
        try:
            with serial.Serial(port, 8192, timeout=2) as test_serial:
                test_serial.write(b"\xF4\x56\x01\xB4")
                response = test_serial.read(64)
                self.error_output.insert("end", f"[DIAG] Response: {response.hex()}\n")
                self.status.set("Diagnostic test successful" if response else "Diagnostic: No response from ECU")
        except Exception as e:
            self.error_output.insert("end", f"[DIAG] Error: {e}\n")
            self.status.set("Diagnostic test failed")
        self.error_output.see("end")

if __name__ == "__main__":
    app = Dashboard()
    app.mainloop()
