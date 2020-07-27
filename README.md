# Scripts

A collection of my bash and python scripts.  
Work in progress; I'm planning to add more scripts as I think of tasks to simplify!

## Getting Started

### 1. Setting up the environment

I write and use these scripts in a Linux environment (WSL 2 Ubuntu 20.04). I expect them to work on MacOS too. For Windows users, I highly suggest setting up the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10).

### 2. Python

For the Python scripts, I recommend installing Python 3.6+ (comes with `pip` too), since I often use f-strings.
[Miniconda3](https://docs.conda.io/en/latest/miniconda.html) environments are really easy to manage.

## Usage

If you try using any of these, remember to give execute permissions to the script.

```
$ chmod +x script_name.sh
$ chmod +x script_name.py
```

This will allow you to run the scripts like:

```
$ ./script_name.sh
$ ./script_name.py
```

Tip: Copy scripts (without `.py`/`.sh` extension) to a directory in your `$PATH` (e.g. `/usr/local/bin`) to access them from anywhere!

```
$ sudo cp ./google.py /usr/local/bin/google
```

Then, you can use the script like this:

```
$ google "youtube the best of the beatles"
```

Please refer to the individual scripts for detailed usage information.

<details>
<summary>Summary</summary>

| Script                  | Description                                                                   |
| ----------------------- | ----------------------------------------------------------------------------- |
| ./hackerrank/           | Solutions to selected Linux Shell questions from HackerRank.                  |
| ./encrypt-pdf.py        | Encrypt a given PDF file with a password.                                     |
| ./google.py             | Google search in the command line.                                            |
| ./merge-json.py         | Merge all JSON files in the specified directory.                              |
| ./merge-pdf.py          | Merge mutliple PDF files into a single file.                                  |
| ./remove-pages.py       | Remove specified pages from a given PDF file.                                 |
| ./sort-json.py          | Sort a JSON file (lexicographically) in-place (including any nested objects). |
| ./add-scripts-to-bin.sh | Copy all python/bash scripts from one directory to another.                   |
| ./check-sudo-group.sh   | List all the sudoers (with root privileges) on the system.                    |
| ./install-conda.sh      | Install miniconda3 in `/opt/conda/`.                                          |
| ./mkfile.sh             | Create a new file in a new directory at the same time.                        |
| ./path.sh               | Pretty print the `$PATH` variable.                                            |
| ./rename-files.sh       | Rename files to replace spaces with underscores, and change to lower case.    |
| ./run-py-java.sh        | Run all python/java files in a specified directory.                           |
| ./youtube.sh            | Download a YouTube video (mp4) or audio file (mp3).                           |

</details>
