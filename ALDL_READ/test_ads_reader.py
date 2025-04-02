
from aldl import ads_parser

ads_path = "./profiles/A057.ads"  # Adjust if needed
try:
    values = ads_parser.parse_ads(ads_path)
    print(f"Parsed {len(values)} variables from {ads_path}:")
    for v in values:
        print(f"{v['name']:30}  Byte: {v['byte']:>3}  Unit: {v['unit']}")
except Exception as e:
    print("Error reading ADS file:", e)
