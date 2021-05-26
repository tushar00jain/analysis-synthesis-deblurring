#!/bin/bash

declare -a xs=("NLTV-LK" "NLTV-TVL1" "TV-LK" "TV-TVL1")

for x in "${xs[@]}"
do
  echo "${x}"
  python deblur_main.py -i "/data/SOTIS/Stabilized/EurasianCitiesBase-Part1/NFrames50/${x}/**/**/*.png" -o /asd/results
done
