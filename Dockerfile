FROM python:latest

RUN apt-get update

WORKDIR /usr/app/src

COPY app.py ./

CMD [ "python", "./app.py"]