FROM python:3.7-slim
MAINTAINER YashPatel

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN apt-get update && apt-get install -y libpq-dev gcc

RUN pip3 install psycopg2~=2.6
RUN apt-get autoremove -y gcc

RUN pip install awscli

RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

