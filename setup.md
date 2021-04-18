```bash
docker pull tensorflow/tensorflow:2.4.0-gpu
docker tag tensorflow/tensorflow:2.4.0-gpu asd:0.0.1

docker run -it --gpus all --name asd -v /media/DataDrive/:/data -v $(pwd):/asd asd:0.0.1 /bin/bash

apt-get update
apt-get install -y python3-opencv # apt-get install -y ffmpeg libsm6 libxext6
pip install --upgrade pip

pip install -r requirements_tf_2.3.0.txt

python deblur_main.py -i ./blurry_input -o ./results -sbs -amis 512
python deblur_main.py -i /data/SOTIS/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/001-1/L1000 -o /asd/result
```