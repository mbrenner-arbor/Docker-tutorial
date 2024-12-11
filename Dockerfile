#Start from base Ubuntu image
FROM ubuntu:22.04

# Make sure all packages are up to date and install python and pip. Can also install other tools from apt-get
RUN apt-get update --fix-missing
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y bcftools

WORKDIR /app
COPY .  .

RUN pip install -r requirements.txt
