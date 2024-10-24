#!/bin/bash

text=${@// /_} ## replace spaces with underscores, because i couldn't find a good way to make espeak account for them and it ended up using just the first word before space
cmd="espeak -v en-us -p30 '$text'";
#echo $cmd

# run not in background
#$cmd
# run the command in background
$cmd &>/dev/null & disown;

exit 0
