[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Tinega-Devops/ALX-project-4/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Tinega-Devops/ALX-project-4/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Files Summary

1. `README`: This file contains all information about this repository 
2. `Dockerfile`: This file contains all commands that which run when docker image is being built.
3. `Makefile` : Makefile has instructions on how to setup ,install,test and lint 
4. `app.py` : This is the python file that contains the flask app 
5. `docker_out.txt`: this file has the log output and prediction value optained after running `make_prediction.sh` against flask container app.
6. `kubernetes_out.txt`: This file contains log output of the flask app running on kubernetes,i.e call `make_prediction.sh`; the terminal output then copied to `kubernetes_out.txt`.
7. `make_prediction.sh` This file contains a bash script for making calls to /predict endpoint of flask app to make predictions.
8. `config.yml` : The file contains circleci workflow configurations for running circleci pipeline.
9. `run_docker.sh` : This script file runs docker command for Building , listing, and running docker image locally.
10. `run_kubernetes.sh` : This script runs a docker image with kubernetes, lists the kubernetes pod(s), and forwards the container port to a host, using `kubectl` appropriately.
11. `upload_docker.sh` : This script uploads built docker image to your own personal Docker ID.