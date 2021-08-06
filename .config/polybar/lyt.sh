#!/bin/bash

echo -n "Layout: "

l=$(setxkbmap -query | grep variant | awk '{ print $2}') 

if [[ $l ]]; then
    echo $l;

else
    echo -n "qwerty";
    
fi
