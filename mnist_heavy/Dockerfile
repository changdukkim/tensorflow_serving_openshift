FROM tensorflow/tensorflow:1.14.0-gpu-py3

WORKDIR /app

COPY mnist_heavy.py /app
COPY requirements.txt /app

RUN echo nameserver 8.8.8.8 > /etc/resolv.conf
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

CMD ["python3", "-m", "mnist_heavy"]