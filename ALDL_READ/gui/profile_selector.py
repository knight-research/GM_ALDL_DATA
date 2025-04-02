# gui/dashboard.py
"""
Ein einfaches Tkinter-Dashboard zur Darstellung einiger ECU-Werte
mit Fahrzeugprofil-Auswahl (.ads-Dateien) und dynamischer Anzeige basierend auf dem gewählten Profil.
Mit Simulationsmodus-Umschaltung, Datenlogging (CSV) und Windows-Kompatibilität.
Automatischer Verbindungsaufbau mit Statusfeld, Wiederverbindungsversuch und Geräteerkennung.
Jetzt mit manueller Portauswahl bei Bedarf.
"""

import tkinter as tk
from tkinter import ttk, filedialog, messagebox
import os
import sys
import platform
import csv
import time
import serial
import subprocess
sys.path.append("..")
from aldl import ads_parser

ADS_DIR = "./profiles"
LOG_FILE = "ecu_log.csv"
MAX_RETRIES = 5
TARGET_USB_ID = "04d8:00dd"

class Dashboard(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("KIDD Digital Dashboard")
        self.geometry("600x700")
        self.configure(bg="black")

        self.selected_profile = tk.StringVar()
        self.simulate = tk.BooleanVar(value=True)
        self.logging = tk.BooleanVar(value=False)
        self.manual_port = tk.StringVar()

        self.labels = {}
        self.data = {}
        self.value_map = []
        self.serial_port = None
        self.status = tk.StringVar(value="Status: Nicht verbunden")
        self.retry_count = 0

        self.create_widgets()
        self.refresh_profiles()
        self.refresh_ports()

    def create_widgets(self):
        title = ttk.Label(self, text="Fahrzeugprofil wählen:", font=("Arial", 12))
        title.pack(pady=5)

        self.profile_menu = ttk.Combobox(self, textvariable=self.selected_profile, state="readonly")
        self.profile_menu.pack(pady=5)
        self.profile_menu.bind("<<ComboboxSelected>>", lambda e: self.load_profile())

        sim_check = ttk.Checkbutton(self, text="Simulationsmodus aktivieren", variable=self.simulate)
        sim_check.pack(pady=5)

        log_check = ttk.Checkbutton(self, text="Datenlogging aktivieren (CSV)", variable=self.logging)
        log_check.pack(pady=5)

        port_label = ttk.Label(self, text="Serieller Port (optional):")
        port_label.pack(pady=2)

        self.port_menu = ttk.Combobox(self, textvariable=self.manual_port, state="readonly")
        self.port_menu.pack(pady=2)

        refresh_btn = ttk.Button(self, text="Ports aktualisieren", command=self.refresh_ports)
        refresh_btn.pack(pady=2)

        retry_btn = ttk.Button(self, text="Verbindung erneut versuchen", command=self.reset_connection)
        retry_btn.pack(pady=5)

        self.data_frame = ttk.Frame(self)
        self.data_frame.pack(pady=10)

        self.status_label = ttk.Label(self, textvariable=self.status, font=("Arial", 10))
        self.status_label.pack(pady=5)

        sysinfo = ttk.Label(self, text=f"System: {platform.system()} - Python {platform.python_version()}", font=("Arial", 9))
        sysinfo.pack(side="bottom", pady=5)

    def refresh_profiles(self):
        if not os.path.exists(ADS_DIR):
            os.makedirs(ADS_DIR)
        ads_files = [f for f in os.listdir(ADS_DIR) if f.endswith(".ads")]
        self.profile_menu['values'] = ads_files
        if ads_files:
            self.profile_menu.current(0)
            self.load_profile()

    def refresh_ports(self):
        ports = [f"COM{i}" for i in range(1, 20)] if platform.system() == "Windows" else \
            [f"/dev/{d}" for d in os.listdir("/dev") if d.startswith("ttyUSB") or d.startswith("ttyACM")]
        self.port_menu['values'] = ports

        default_port = "COM3" if platform.system() == "Windows" else "/dev/ttyUSB0"
        if default_port in ports:
            self.port_menu.set(default_port)
            self.manual_port.set(default_port)
        elif ports:
            self.port_menu.set(ports[0])
            self.manual_port.set(ports[0])



    def load_profile(self):
        for widget in self.data_frame.winfo_children():
            widget.destroy()

        profile = self.selected_profile.get()
        if not profile:
            messagebox.showwarning("Kein Profil", "Bitte ein Profil auswählen.")
            return

        profile_path = os.path.join(ADS_DIR, profile)
        self.value_map = ads_parser.parse_ads(profile_path)

        self.data = {}
        self.labels = {}

        for val in self.value_map:
            name = val["name"]
            self.data[name] = 0.0
            lbl = ttk.Label(self.data_frame, text=f"{name}: 0.0 {val['unit']}", font=("Courier", 16))
            lbl.pack(anchor="w", pady=2)
            self.labels[name] = (lbl, val["unit"])

        self.status.set(f"Profil '{profile}' geladen – Verbindung wird hergestellt…")
        self.retry_count = 0
        self.update_loop()

    def update_loop(self):
        row = {"timestamp": time.strftime("%Y-%m-%d %H:%M:%S")}

        for val in self.value_map:
            key = val["name"]
            if self.simulate.get():
                self.data[key] += 0.3
            else:
                self.data[key] = self.read_from_device(val)

            lbl, unit = self.labels[key]
            lbl.config(text=f"{key}: {self.data[key]:.1f} {unit}")
            row[key] = f"{self.data[key]:.2f}"

        if self.logging.get():
            self.write_log(row)

        self.after(1000, self.update_loop)

    def read_from_device(self, val):
        try:
            if self.serial_port is None:
                port = self.manual_port.get()
                if not port:
                    port = "COM3" if platform.system() == "Windows" else "/dev/ttyUSB0"
                self.serial_port = serial.Serial(port, 8192, timeout=1)
                self.status.set(f"Status: Verbunden ({port})")

            self.serial_port.write(b"\xF4\x56\x01\xB4")
            response = self.serial_port.read(64)

            byte_index = int(val["byte"])
            if byte_index < len(response):
                raw = response[byte_index]
                factor = float(val.get("factor", 1.0))
                offset = float(val.get("offset", 0.0))
                return raw * factor + offset
        except Exception as e:
            self.status.set(f"Status: Verbindungsfehler – Versuch {self.retry_count + 1}/{MAX_RETRIES}")
            print(f"Verbindungsfehler: {e}")
            self.serial_port = None
            self.retry_count += 1
            if self.retry_count >= MAX_RETRIES:
                self.simulate.set(True)
                self.status.set("Status: Verbindung fehlgeschlagen – Simulationsmodus aktiviert")
        return 0.0

    def reset_connection(self):
        self.serial_port = None
        self.retry_count = 0
        self.simulate.set(False)
        self.status.set("Status: Verbindung wird erneut versucht…")

    def write_log(self, row):
        file_exists = os.path.isfile(LOG_FILE)
        with open(LOG_FILE, mode="a", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=row.keys())
            if not file_exists:
                writer.writeheader()
            writer.writerow(row)

if __name__ == "__main__":
    app = Dashboard()
    app.mainloop()
