#!/bin/bash

# Accept two arguments
# $1: full path to a file including filename on the filesystem (writefile)
# $2: text string to be written (writestr)

writefile=$1
writestr=$2

if [[ -z "$writefile" || -z "$writestr" ]]; then
    echo "Specify arguments first"
    exit 1
else
    touch "$writefile" && echo "$writestr" >> "$writefile"
fi


# exits with value 1 error and print statements if any of the arguments were not specified
# create a new file name and path writefile with content writestr
# overwrite any existing file and create path if it doesn't exist
# exits with value 1 and error print statement if the file could not be created

# example on how the script is called
# writer.sh /tmp/aesd/assignment1/sample.txt ios