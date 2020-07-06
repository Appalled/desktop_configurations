#!/bin/sh
WALLPAPERS="/home/zen/Picture"
ALIST=( `ls -w1 $WALLPAPERS` )
RANGE=${#ALIST[*]}
SHOW=$(( $RANDOM % $RANGE ))
feh --bg-fill $WALLPAPERS/${ALIST[$SHOW]}
