"""
Improved parser for .ADS (TunerPro) files.
Supports quoted and unquoted strItemTitle with spaces.
"""

import re

def parse_ads(file_path):
    with open(file_path, encoding="latin1") as f:
        content = f.read()

    value_blocks = re.findall(r"{\s*dwItemType\s*=\s*1;.*?}\s*", content, re.DOTALL)
    results = []

    for block in value_blocks:
        def extract(pattern, default=""):
            match = re.search(pattern, block)
            if match:
                for group in match.groups():
                    if group:
                        return group.strip().strip('"')
            return default

        name = extract(r"strItemTitle\s*=\s*(?:\"([^\"]+)\"|([^;\n]+))")
        if not name:
            name = extract(r"strLabel\s*=\s*(?:\"([^\"]+)\"|([^;\n]+))", "Unnamed")

        byte = extract(r"btByteNumber\s*=\s*(\d+)", "0")
        try:
            byte = int(byte)
        except ValueError:
            byte = 0

        try:
            factor = float(extract(r"dFactor\s*=\s*([\d\.\-]+)", "1.0"))
        except ValueError:
            factor = 1.0

        try:
            offset = float(extract(r"dOffset\s*=\s*([\d\.\-]+)", "0.0"))
        except ValueError:
            offset = 0.0

        unit = extract(r"strUnitLabel\s*=\s*(?:\"([^\"]+)\"|([^;\n]*))")

        results.append({
            "name": name,
            "byte": byte,
            "bits": extract(r"dwItemSizeBits\s*=\s*(\d+)", "8"),
            "factor": factor,
            "offset": offset,
            "unit": unit
        })

    return results

def decode_values(response_bytes, value_map):
    results = {}
    for val in value_map:
        name = val["name"]
        byte_index = val.get("byte", 0)
        if byte_index >= len(response_bytes):
            results[name] = 0.0
            continue
        raw = response_bytes[byte_index]
        results[name] = raw * val["factor"] + val["offset"]
    return results
