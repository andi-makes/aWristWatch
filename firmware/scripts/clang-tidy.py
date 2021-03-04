#!/usr/bin/env python3

import json
import sys
import subprocess
import os
import re


def parse_clang_output(file: str) -> int:
    if not os.path.exists(file):
        return 0
    with open(file) as f:
        input_data: str = "\n".join(f.readlines())
    pattern = re.compile("  - DiagnosticName:")
    return len(pattern.findall(input_data))


def filenames_from_cl_json(command_lists_file: str) -> list:
    with open(command_lists_file) as f:
        input_data: str = "\n".join(f.readlines())
    data = json.loads(input_data)
    files = []
    for item in data:
        file_name: str = item["file"]
        if file_name.endswith(".cpp"):
            files.append(file_name)
    return files


if len(sys.argv) <= 4:
    exit(1)

BINARY_DIR: str = sys.argv[1]
OUTPUT_FILE: str = sys.argv[2]
EXECUTABLE: str = sys.argv[3]

COMMAND: list = [EXECUTABLE, "-p", BINARY_DIR, "--export-fixes=" + OUTPUT_FILE] + \
    sys.argv[4:] + \
    filenames_from_cl_json(BINARY_DIR + "/compile_commands.json")

if os.path.exists(OUTPUT_FILE):
    os.remove(OUTPUT_FILE)

process = subprocess.Popen(
    COMMAND, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

output = process.communicate()

exit_code = process.returncode

print("clang-tidy found " + str(parse_clang_output(OUTPUT_FILE)) +
      " possible problems in your code.")

exit(exit_code)
