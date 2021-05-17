# BASIC DOCKER INTRODUCTION

**What is Docker?** <br>
Docker is a software development platform for virtualization with multiple Operating systems running on the same host. It helps to separate infrastructure and applications in order to deliver software quickly. Unlike Hypervisors, which are used for creating VM (Virtual machines), virtualization in Docker is performed on system-level, also called Docker containers. 

**Docker Installation Steps can be found here:**
>Windows: [Click Here](https://docs.docker.com/docker-for-windows/install/)<br>
>Mac: [Click Here](https://docs.docker.com/docker-for-mac/install/)<br>
>Linux: Installation per distro<br>
>> CentOS: [Click Here](https://docs.docker.com/engine/install/centos/)<br>
>> Debian: [Click Here](https://docs.docker.com/engine/install/debian/)<br>
>> Fedora: [Click Here](https://docs.docker.com/engine/install/fedora/)<br>
>> Ubuntu: [Click Here](https://docs.docker.com/engine/install/ubuntu/)<br>


**Installing Docker-Compose:** [Click Here](https://docs.docker.com/compose/install/)

## Basic Docker and Docker-Compose Commands Cheatsheet:
| Command | Description | Remarks
| --- | --- | --- |
docker build . | Build image from the provided Dockerfile | 'dot' or 'period' is called as Build context. basically the location of Dockerfile, in this case it is referencing the current directory
docker run image-name | This will use the image provided and build a container out of it | You can provide a command after image-name and override the default command of Docker Container *eg. docker run image-name sh*
docker images | Will display the images that has been create previously | List of Images present in the system
docker rmi image-name | Remove Image present in the machine | Images will be permanently deleted you have to rebuild the dockerfile
docker ps<br>docker container list<br> docker container ls | Shows running containers | Default Running Containers only attributes such as *--all or -a* can be added to show all containers after the command
docker stop container-name | Used to stop the running container | Stop the container and move it to Exited state
docker-compose up | Start the container in docker-compose.yml | All containers inside the docker-compose file will start
docker-compose down | Stop running containers in docker-compose | All containers inside the docker-compose file will stop
docker-compose up --build | Rebuild the image and start container | Use in case you have made some changes in docker-compose file or the application


**Note: While building docker-compose.yml make sure to navigate to the directory where docker-compose.yml file is present on your terminal.**

## Docker and Docker-Compose commands attributes to be aware of:

| Attribute | Description
| --- | --- |
-t | Tagging Images or Containers
-f | Specifying which file to use for building docker image
-d | Running containers in detached mode
-p | Port Mapping
-v | Volume Mapping


