#!/bin/sh

#
# Parameters in shell scripts are placed in variables named $1, $2, etc.
#
# All we need to do is modify the ex1.2.sh script to use parameters instead
# of the hard-coded values.
#

# This command will create a file called "output" in the
# current directory.
wget -O output $1

# Use grep to search for $2 in the file "output".
grep $2 output | wc -l

# Delete the file, since we won't use it anymore.
rm output