# Purpose
This Repo contains example files for building a Docker image around python 
scripts and bioinformatics tools. This README.md file gives directions and 
explanations to follow in order to build, upload, and run a docker image.

# Docker Overview
Docker is a platform that allows us to package applications and their 
dependencies into "containers." These containers are lightweight, portable, and
provide a consistent environment for running applications across different 
systems. In essence, Docker helps us ensure that the application will run the
same way regardless of where it's deployed, whether on a developer's local 
machine, a virtual machine in the cloud, or a production server. This makes 
it especially useful when working with cloud platforms like Google Cloud 
Platform (GCP), as a Docker image can contain everything needed to run a single
script, multiple scripts, or an entire application.

# Files Used in Tutorial
1. **Dockerfile:** The Dockerfile is the most important file for building a 
docker image. It contains the necessary instructions for docker to build
the image.
2. **docker_tutorial.py:** This file is an example python script that uses 
a file as an input, and prints out the contents of the file and a numpy 
array. This is done to show how to include python libraries in the docker.
3. **requirements.txt:** This file is the output of:  
```pip freeze > requirements.txt```  
And includes the python packages needed for the python script in the image.
4. **.dockerignore:** The .dockerignore file specifies what files in the 
directory the image should ignore when being built.



