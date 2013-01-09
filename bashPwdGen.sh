#!/bin/bash
#
# A Password Generator
# Currently not very secure
# Copyright Ben Tasker 2008


if [ "$1" == "" ]
then

echo "Password Length?"
read LENGTH

else

LENGTH=$1

fi


BINRAND=$(dd if=/dev/urandom count=15 2> /dev/null)
INPUT="$RANDOM $RANDOM $RANDOM $BINRAND $INFO"


# Display the new password

echo "$INPUT" | sha1sum | cut -c1-$LENGTH

