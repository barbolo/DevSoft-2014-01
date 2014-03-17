#!/bin/sh

# First, cd to the base directory.
# This means the script can be executed anywhere.
cd /home/vagrant

# Create the first directory.
mkdir praticas_desenvolvimento_software

# Create the symbolic link (also called a "symlink") to the previous directory.
ln -s praticas_desenvolvimento_software devsoft

# Go to the new directory.
cd praticas_desenvolvimento_software

# Create the next directory, along with their 2 symlinks.
# Note that, if the directory name has spaces, you have to use quotes
# around it, otherwise multiple directories will be created.
mkdir "Infosimples Team"
ln -s "Infosimples Team" InfoTeam
ln -s "Infosimples Team" NoNumber

cd "Infosimples Team"

mkdir aula01

# Just create an empty file.
touch ex1.1.sh
