#!/usr/bin/env python3

import json
import sys
import subprocess


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

process = subprocess.Popen(COMMAND, stdout=subprocess.PIPE)

process.communicate()

exit(process.wait())
