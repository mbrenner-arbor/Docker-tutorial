#Start from base Ubuntu image
FROM ubuntu:22.04

# Make sure all packages are up to date and install python and pip. Can also install other tools from apt-get
RUN apt-get update --fix-missing
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

# Also install bcftools for bioinformatics analysis
RUN apt-get install -y bcftools

# The WORKDIR command makes all further commands use the specified directory as the starting point. It also makes
# this directory the access point upon initialization of the image in a container.
WORKDIR /app

# The copy command copies needed files from '.' (in this case the current directory) and to '.' (the image's /app dir)
COPY .  .

# Now that requirements.txt is copied into the image, use pip to install the packages in the file.
RUN pip install -r requirements.txt

# If you would like to have the image run more commands upon initialization, add more RUN commands. These commands
# can be any command you would normally be able to run in this enviroment, including calling the python script or
# running bcftools.