#!/bin/bash

INPUT_SECONDS=$1

# convertsecs() {
#  h=$(bc <<< "${1}/3600")
#  m=$(bc <<< "(${1}%3600)/60")
#  s=$(bc <<< "${1}%60")
#  printf "%02d:%02d:%05.2f\n" $h $m $s
# }

# convertsecs() {
#  ((h=${1}/3600))
#  ((m=(${1}%3600)/60))
#  ((s=${1}%60))
#  printf "%02d:%02d:%02d\n" $h $m $s
# }
#TIME1="36"
#TIME2="1036"
#TIME3="91925"

#echo $(convertsecs $TIME1)
#echo $(convertsecs $TIME2)
#echo $(convertsecs $TIME3)

#echo $(convertsecs $INPUT_SECONDS)

#printf '%dh:%dm:%ds\n' $((secs/3600)) $((secs%3600/60)) $((secs%60))
printf '%dh:%dm:%ds\n' $((INPUT_SECONDS/3600)) $((INPUT_SECONDS%3600/60)) $((INPUT_SECONDS%60))
