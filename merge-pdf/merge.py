from tkinter import Tk, filedialog
from PyPDF2 import PdfFileWriter, PdfFileReader

root = Tk()
root.geometry('0x0+0+0')
root.iconify()

try:
    # choose PDF files to be merged
    selected_files = filedialog.askopenfilenames(
        title="Select PDF file(s)", filetypes=[("PDF files", "*.pdf")])

    if selected_files == "":
        print("\nError: No file selected!")
    elif len(selected_files) == 1:
        print("\nError: Only one file selected!")
    else:
        print("Files to be merged:")
        for f in selected_files:
            print(f)

        writer = PdfFileWriter()
        # add every page of every PDF to the PDF file writer
        for filename in selected_files:
            pdf = PdfFileReader(open(filename, 'rb'))
            for page in range(pdf.getNumPages()):
                writer.addPage(pdf.getPage(page))

        # save merged PDF
        merged = filedialog.asksaveasfilename(
            title="Save As", filetypes=[("PDF files", "*.pdf")])
        if merged == "":
            print("\nError: No file selected!")
        else:
            if not merged.endswith(".pdf"):
                merged += ".pdf"

            if merged in selected_files:
                print("\nError: Merged file cannot be one of the originally selected files!")
            else:
                writer.write(open(merged, 'wb'))
                print(f"\nPDF merge complete:\n{merged}")

except Exception as e:
    print(f"\nError: File could not be processed!\n{filename}")
    print(e)
