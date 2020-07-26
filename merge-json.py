#!/usr/bin/env python3
import json
import sys
import os

"""
Merges all JSON files in the specified directory.

### Usage:

```
$ ./merge-json.py <directory>
```

E.g. Merge all JSON files in the current directory.
```
$ ./merge-json.py .
```

The outfile JSON file is saved in the current working directory as `merged.json`.

"""

try:
    input_dir = sys.argv[1]

    if not input_dir:
        print("No directory specified!")
    else:
        combined_data = {}
        count = 1
        print("\nFiles to be merged:")
        for filename in sorted(os.listdir(input_dir)):
            filename = os.path.join(input_dir, filename)
            if filename.endswith(".json"):
                print(filename)
                with open(filename, "r+") as file:
                    combined_data[f"file_{count}"] = json.load(file)
                    count += 1

        if combined_data:
            json.dump(combined_data, fp=open("merged.json", "w"), indent=4)
            print(f"\nJSON merge complete! Saved as: ./merged.json\n")
        else:
            print("\nError! No JSON files found.\n")


except Exception as e:
    print(f"Error! Check script comments for usage details!")
    print(e, "\n")
