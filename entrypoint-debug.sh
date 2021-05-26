#!/bin/bash

python -m debugpy --listen 0.0.0.0:8001 --wait-for-client deblur_main.py \
	-i /data/SOTIS/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/**/**/*.png -o /asd/results