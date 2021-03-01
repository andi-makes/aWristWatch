#!/usr/bin/env python3

import json
import sys

with open(sys.argv[1]) as f:
    input_data = "\n".join(f.readlines())

data = json.loads(input_data)

files = []

for item in data:
    file:str = item["file"]
    if file.endswith(".cpp") or file.endswith(".hpp"):
        files.append(file)

print(" ".join(files))
