#!/usr/bin/env bash

#\\- Counts all blank files/directories under. '~' -//
#\\- Uses if statement for no reason btw. -//


if a=$(find ~ -empty | wc -l) ; then
   echo "$a empty files found. [*] "
fi
