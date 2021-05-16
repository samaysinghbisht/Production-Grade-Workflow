# Production Grade Workflow using Dockerfile, Dockerfile.dev, docker-compose.yml and Nginx server.

## This is a simple web app bootstrapped with **[Create React App](https://github.com/facebook/create-react-app/?target=_blank){:target="_blank" rel="noopener"} **.

This is a demo app built with an intention to successfully deploy a react.js app on **Ngnix Server** and can be served to end user. 

## Production flows implemented:
* Development Flow and running the application on development server.
* Running Unit Test Suite.
* Creating a Production ready build and deploying it to Nginx Server which further serves the application to end user.

## Files which I have created to make this project Production Ready are below:
* Dockerfile.dev
* Dockerfile
* docker-compose.yml

## Docker Features Implemented:
* Multi-Container
* Port-Mapping
* Volume-Mapping 

## Purpose of each file is described below:
* **Dockerfile.dev** - It's sole purpose is to run the project in Development environment by creating a Development Server and Unit Tests can also be run using this.
* **docker-compose.yml** - This is just an extenstion for Dockerfile.dev, allowing us to run the containers without using long command in terminal as explained below.
* **Dockerfile** - This will create a production ready build and push it to Nginx container for Deployment purpose.

## Using Dockerfile.dev to run the project in Development Environment:

* docker build -t image-name -f Dockerfile.dev . --> *This will create an image for the whole project and tagging it with a name.*
* docker run -p host_port:3000 image-name --> *This will start the Development Environment server and you can access the project on [localhost:3000](http://localhost:3000) (**If you have mapped it to port 3000 on host machine**).*
* docker run image-name npm run test --> *This will start Unit Tests in the project by overriding the primary command of the container to npm run test.*
* docker run -v /home/node/app/node_modules -v $(pwd):/home/node/app -p 3000:3000 container-id--> This will start running docker container with volume mapping of host system directory with container's file system, this enable the changes to be reflected on browser without rebuilding the docker file.

## Using docker-compose.yml to run the project in Development Environment:
* docker-compose up --> *This will start building the project using the provided configuration and start Development server and start running the test suite too.*

## Using Dockerfile to start project in Deployment server:
* docker build -t image-name . --> *This will create a production optimized build ready to be served and tagging it with a name.*
* docker run -p host_port:80 image-name --> *This will start the container with Nginx server and map it to the specified host port and can be viewed on [localhost:8080](http://localhost:8080) (**If you have mapped it to port 8080 on host machine**). *

### **Note: Nginx default port is 80.**
