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

Tip: Copy scripts (without .py/.sh extension) to a directory in your
\$PATH (e.g. /usr/local/bin) to access them from anywhere!

```
$ sudo cp ./google.py /usr/local/bin/google
```

Then, you can use the script like this:

```
$ google "youtube the best of the beatles"
```

Please refer to comments in the individual scripts for detailed usage information.
