FROM tensorflow/tensorflow:1.14.0-gpu-py3
LABEL maintainer="Bedapudi Praneeth <praneeth@notai.tech>"
RUN apt-get update && apt-get install -y build-essential gcc
RUN pip3 install Cython requests gevent gunicorn
RUN pip3 install --no-binary :all: falcon
WORKDIR /app
ADD . /app
CMD ["bash", "_run.sh"]