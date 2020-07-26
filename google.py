#!/usr/bin/env python3
import webbrowser
import sys

"""
Quick Google search from the command line.

### Usage

```
$ ./google.py "youtube the lumineers"
```

Google search for the terms in quotes.

Note: The script also works for most terms without being wrapped in quotes.
But it's safer to provide the quotes around your search term in case you have
special characters like ' (apostrophe), which serve a different purpose in
the command line.
"""

webbrowser.open_new_tab('http://google.com/search?q=' + ' '.join(sys.argv[1:]))
