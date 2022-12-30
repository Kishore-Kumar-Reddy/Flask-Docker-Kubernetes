# Fetch Ubuntu Image
FROM ubuntu:22.04

# Install Python on Image

RUN \ 
     apt-get update && \
     apt-get install -y python3 && \
     apt-get install -y python3-pip

# Create a directory for our app
RUN mkdir /app

WORKDIR /app/

ADD . /app/

RUN pip3 install -r requirements.txt

# Command that will be invoked when container starts
ENTRYPOINT ["python3", "/app/app.py"]