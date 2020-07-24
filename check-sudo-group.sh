#!/bin/bash
# Lists all the sudoers (with root privileges) on the system
# Usage: ./check-sudo-group.sh

echo "List of superusers on your system: "
grep -Po '^sudo.+:\K.*$' /etc/group