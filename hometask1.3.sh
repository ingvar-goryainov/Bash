#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

BUFFETT=${BUFFETT/snow/foot}
BUFFETT=${BUFFETT/snow/}
BUFFETT=${BUFFETT/finding/getting}

# echo ${BUFFETT:0:60}

echo $BUFFETT | sed 's/wet.*/wet/'

exit 0
