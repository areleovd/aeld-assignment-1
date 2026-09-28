#!/bin/bash

# Accept arguments: $1: path to dir on file (filesdir)
# $2: a text to string to be searched within the files (searchstr)

filesdir=$1
searchstr=$2

if [[ -z "$filesdir" || -z "$searchstr" ]]; then
    echo "Specify arguments first!"
    exit 1
elif [[ ! -d "$filesdir" ]]; then
    echo "filesdir does not represent a directory!"
    exit 1
else
    # Search all files listed in the directory and subdirectories
    # In these files, go through each line to find the specified word from argument 2
    totalfiles=$(find "$filesdir" -type f | wc -l)
    totallines=$(grep -oR -w "$searchstr" "$filesdir" | wc -l)

    echo "The number of files are $totalfiles and the number of matching lines are $totallines"
fi


# exits with return val 1 and print statements if any arguments are not specified
# exits with return val 1 and print statements if filesdir does not represent
# a directory on the filesystem

# prints a message "The number of files are X and the number of matching lines are Y"
# X: the number of files in the directory and all subdirectories
# Y: the number of matching lines found in respective files where matching lines refer to a line which contains searchstr (may also contain additional contents)


# example of execution: finder.sh /tmp/aesd/assignment1 linux