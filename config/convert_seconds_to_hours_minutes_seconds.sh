#!/bin/bash -xe

INPUT=$1

INPUT_SECONDS=0
## validate if integer or decimal
re_int='^[0-9]+$'
re_decimal='^[0-9]+\.[0-9]+$'
if [[ $INPUT =~ $re_int ]] ; then
    INPUT_SECONDS=$INPUT
elif [[ $INPUT =~ $re_decimal ]]; then
    INPUT_SECONDS=$(printf %.0f $INPUT)
fi

## print result 
printf '%dh:%dm:%ds\n' $((INPUT_SECONDS/3600)) $((INPUT_SECONDS%3600/60)) $((INPUT_SECONDS%60))
