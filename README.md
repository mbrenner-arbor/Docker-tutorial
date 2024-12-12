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

# Using Docker
Here is a list of what certain commands do and what they are.

## `docker build` 
To build the docker image while in the current `.` directory 
with the Dockerfile. This command will build the image and store it in your 
docker 0repository. The `-t` flag indicates that we are tagging the image, in 
case there are multiple iterations.  
`docker build . -t REPO/IMAGE_NAME:TAG`  
At Arbor, we typically use the 'arboradmin' REPO name, and `YYMMDD` as the 
tag.


## `docker pull`
Pulls a container from the docker hub website.  
`docker pull arboradmin/flash:20231218`  
This pulls our flash image from docker hub. Check out hub.docker.com to see 
more images.


## `docker run`
To run the image locally. Followed by either a command, or with`-it` flags it
can be run interactively.  
Examples:  

**Run the python script 'docker_tutorial.py' on a file:**  
`docker run REPO/IMAGE_NAME:TAG python3 docker_tutorial.py <path/to/file>`  
This will print out the contents of the given file and a numpy array to stdout 
as the python script should.

**Run the docker container interactively while also mounting the same file to 
use:**  
`docker run -it -v <absolute_path/to/file>:<path/in/container/name> 
REPO/IMAGE_NAME:TAG`  
Now the file is located in <path/in/container> in the container and we can run 
commands inside wit the console. Type `exit` to leave the container.


## `docker push`
Once you build the docker image, you can push it to docker hub for easy access
anywhere, including a GCP virtual machine.  
`docker push REPO/IMAGE_NAME:TAG`
