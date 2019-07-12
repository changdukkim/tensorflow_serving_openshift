FROM tensorflow/serving:nightly-devel
RUN mkdir /app
COPY mnist_tensorflow_light.py /app
COPY mnist_input_data.py /app
WORKDIR /app
CMD ["sh","-c","python mnist_tensorflow_light.py /app/mnist && sleep 3600"]
