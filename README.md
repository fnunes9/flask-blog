# Flask-Blog-Exercise

This page shows a simple Flask project to be containerize.

## Project's Organization

* static: contains static files, such as .css styles.
* templates: contains all templates using Jinja engine. See *https://flask.palletsprojects.com/en/2.2.x/templating/* for more information.
* app: The API by Flask, a micro web framework. See *https://flask.palletsprojects.com/en/2.2.x/* .

## Creating an account at Github

To start with, you need an account at github. Following this [link](https://github.com/join) you will be able to set an account.

## Creating a project (Github)

Just follow this: https://docs.github.com/en/get-started/quickstart/hello-world . Its important that you complete this tutorial. You'll be able to learn more about Git(hub) and also create your first project. **Pay attention** in terms like *'commit', 'merge', 'branch', 'pull request'*. These are fundamental terms to know Git. Then, go back to the last link and do that tutorial.

## Cloning a project (Git)

You are now using Git to change, via terminal, a project. Please, install Git on your local (or virtual) machine: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git . 

* Getting a Git Repository:

You may be wondering how about creating a Git repository. You can do this in command line. For now, you are going to use an existing one. Following this https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository you can see how to create/cloning a repository. You're going to clone this repository. Remember about you credentials. You will need it. So, **clone me!**

You are able to change this project. Maybe we are going to go back to this project later. For now just try to figure it out what is going on.

## Docker

- To start with, create a docker hub account. You are going to use it when you share your images. Go to *https://hub.docker.com/* and create your free account.

- Install docker on local (virtual) machine. See *https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository*.

- Run the image that is already shared:
   - sudo docker run -p 5000:5000 -d gustavoafernandes/prof-gus-flask-docker
- The most used Docker commands that we're going to use are:
   - sudo docker image build -t <image-name>
   - sudo docker image ls
   - sudo docker container ls
   - sudo docker run [OPTIONS] <image-name or image-id>
   - sudo docker stop (start) <image-name or image-id>
   - sudo docker rm <image-name or image-id>
   - sudo docker image rm <image-name or image-id>

- Get familiar with Docker. We are going to use it a lot.

That's all folks. :rocket: