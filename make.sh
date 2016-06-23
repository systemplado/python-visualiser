#!/bin/bash

if [ $# -lt 2 ]; then
  echo "You must supply a mono-mixed wave file as the first argument. and the name of the output file"
  exit 1
fi

[[ -w frame_*.png ]] && rm frame_*.png

./plotvals.py $1 &&

ffmpeg -f image2 -framerate 24 -i frame_%05d.png -i $1 $2
