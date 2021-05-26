FROM tensorflow/tensorflow:2.4.0-gpu

WORKDIR /asd

ADD requirements_tf_2.3.0.txt requirements.txt

RUN apt-get update
RUN apt-get install -y python3-opencv

RUN pip install --upgrade pip
RUN pip install debugpy
RUN pip install -r requirements.txt
