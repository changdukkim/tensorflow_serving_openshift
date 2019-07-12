FROM tensorflow/serving:latest-devel
RUN mkdir -p /app/mnist
COPY mnist_input_data.py /app
COPY mnist_client_rest_rpc.py /app
COPY mnist /app/mnist
RUN chmod 777 -R /app
WORKDIR /app
