#!/bin/sh

# This command will create a file called "intro-linux.html" in the
# current directory.
wget http://www.tldp.org/LDP/intro-linux/html/intro-linux.html

# Use grep to search for "linux"
grep "linux" "intro-linux.html" | wc -l

# Remove the file, since we don't need it anymore.
rm "intro-linux.html"

# Answer: 29

#
# Note that grep, by default, performs case-sensitive searches.
# If we search for "Linux", we get a different answer (415).
#
# You can also perform case-insensitive search by using the -i option,
# like so:
#
# grep -i "linux" "intro-linux.html" | wc -l # => 445
#
