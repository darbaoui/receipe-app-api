FROM python:3.7-alpine
MAINTAINER Devinweb

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D devinweb_uGL7INw
USER devinweb_uGL7INw