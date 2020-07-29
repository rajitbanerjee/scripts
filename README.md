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
$ chmod +x script_name
```

This will allow you to run the scripts like:

```
$ ./script_name
```

Tip: Copy scripts to a directory in your `$PATH` (e.g. `~/bin`, assuming you've added it to your path) to access them from anywhere!

```
$ sudo cp ./google ~/bin/google
```

Then, you can use the script like this from any working directory:

```
$ google "youtube the best of the beatles"
```

Please refer to the individual scripts for detailed usage information.

<details>
<summary>Summary</summary>

| Script              | Description                                                                   |
| ------------------- | ----------------------------------------------------------------------------- |
| ./hackerrank/       | Solutions to selected Linux Shell questions from HackerRank.                  |
| ./check-sudo-group  | List all the sudoers (with root privileges) on the system.                    |
| ./encrypt-pdf       | Encrypt a given PDF file with a password.                                     |
| ./github            | Open GitHub for repository in current working directory.                      |
| ./google            | Google search in the command line.                                            |
| ./install-conda     | Install miniconda3 in `/opt/conda/`.                                          |
| ./merge-json        | Merge all JSON files in the specified directory.                              |
| ./merge-pdf         | Merge mutliple PDF files into a single file.                                  |
| ./mkfile            | Create a new file in a new directory at the same time.                        |
| ./path              | Pretty print the `$PATH` variable.                                            |
| ./remove-extensions | Remove file extensions from all files in the specified directory.             |
| ./remove-pages      | Remove specified pages from a given PDF file.                                 |
| ./rename-files      | Rename files to replace spaces with underscores, and change to lower case.    |
| ./run-py-java       | Run all python/java files in a specified directory.                           |
| ./sort-json         | Sort a JSON file (lexicographically) in-place (including any nested objects). |
| ./update-submodule  | Update changes in a given submodule.                                          |
| ./youtube           | Download a YouTube video (mp4) or audio file (mp3).                           |

</details>
