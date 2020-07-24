#!/usr/bin/env python3
import json
import sys

"""
Sorts a JSON file (lexicographically) in-place (including any nested objects).

Usage:
    Single JSON file:
    $ ./sort-json.py path/to/file.json

    Multiple JSON files:
    $ ./sort-json.py file1.json file2.json file3.json
"""

try:
    files = sys.argv[1:]

    if not files:
        print("No file selected!")
    else:
        for filename in files:
            if filename.endswith(".json"):
                with open(filename, "r+") as file:
                    data = json.load(file)
                    file.seek(0)
                    file.truncate(0)
                    json.dump(data, fp=file, indent=4, sort_keys=True)

                print(f"JSON sort complete: {filename}")
            else:
                print(f"Error: {filename} is not a JSON file!")

except Exception as e:
    print(f"Error: File could not be processed!\n{filename}")
    print(e)
