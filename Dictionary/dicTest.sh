#!/bin/bash -x


declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"


echo "Dog sounds : " ${sounds[dog]}
echo "All Animals sounds : "${sounds[@]}
echo "All animals : "${!sounds[@]}
echo "Number of Animals: " ${#sounds[@]}
unset sounds[wolf]
echo "After deleting all animals : " ${!sounds[*]}

 
