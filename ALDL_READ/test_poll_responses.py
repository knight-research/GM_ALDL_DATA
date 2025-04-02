import serial
import time

port = "COM3"  # <- adjust for your platform if needed
baud = 8192

# List of common ALDL test commands (in hex)
polls = {
    "F4 56": bytes.fromhex("F4 56"),
    "F4 56 01": bytes.fromhex("F4 56 01"),
    "F4 56 01 B4": bytes.fromhex("F4 56 01 B4"),
    "F4 51": bytes.fromhex("F4 51"),
    "F4 58": bytes.fromhex("F4 58"),
}

try:
    with serial.Serial(port, baud, timeout=0.5) as ser:
        print(f"Connected to {port} at {baud} baud")
        for label, cmd in polls.items():
            print(f"\nSending: {label}")
            ser.write(cmd)
            time.sleep(0.2)
            response = ser.read(64)
            print(f"Response ({len(response)} bytes): {response.hex(' ')}")
except Exception as e:
    print(f"Error: {e}")
