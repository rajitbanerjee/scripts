#!/usr/bin/env python3
import subprocess
import sys

"""
Merges mutliple PDF files into a single file.

### Usage

1. Ensure that you have `pip` installed.
2. Run the script with the files to be merged as arguments.
```
$ ./merge.py file1.pdf file2.pdf
```
3. The merged file is saved as `merged.pdf`.
"""

print("Installing requirements...")
subprocess.check_call([sys.executable, "-m", "pip", "install", "PyPDF2"])

from PyPDF2 import PdfFileWriter, PdfFileReader

try:
    # PDF files to be merged
    selected_files = sys.argv[1:]

    if selected_files == "":
        print("\nError: No file selected!")
    elif len(selected_files) == 1:
        print("\nError: Only one file selected!")
    else:
        print("\nFiles to be merged:")
        for f in selected_files:
            print(f)

        writer = PdfFileWriter()
        # add every page of every PDF to the PDF file writer
        for filename in selected_files:
            pdf = PdfFileReader(open(filename, 'rb'))
            for page in range(pdf.getNumPages()):
                writer.addPage(pdf.getPage(page))

        # save merged PDF
        writer.write(open("merged.pdf", 'wb'))
        print(f"\nPDF merge complete! Saved as: merged.pdf")

except Exception as e:
    print(f"\nError: File could not be processed!\n{filename}")
    print(e)
