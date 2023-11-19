#syntax=docker/dockerfile:1
FROM python:3.12
#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1
#RUN mkdir /code
WORKDIR /code
RUN: cd /code
#COPY resume_website /code/resume_website

# Install Python Version
#RUN sudo apt update
#RUN sudo apt install python3
#RUN sudo apt install software-properties-common
#RUN sudo add-apt-repository ppa:deadsnakes/ppa
#RUN sudo apt update
#RUN sudo apt install python3.12
#RUN: sudo usermod -a -G docker $USER
#RUN: newgrp docker


#gpasswd -a $USER docker
#systemctl start docker

#sudo usermod -aG docker $USER
sudo systemctl enable docker


# Configure Python Environment
RUN pip install --upgrade pip
RUN virtualenv --python=python3.12 .venv
RUN source .venv/bin/activate
#COPY requirements.txt /code/
RUN pip install -r requirements-install.txt
COPY . .
EXPOSE 8000
CMD ["python", "manage.py", "runserver"]
 #"127.0.0.1:8000"]
#"0.0.0.0:8000"]