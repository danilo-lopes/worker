FROM python:3.8-slim

WORKDIR /app

COPY app requirements.txt databaseValidateConnection.py docker-entrypoint.sh ./

RUN apt-get update && apt-get install default-libmysqlclient-dev gcc -y && \
    pip3 install --no-cache-dir -r requirements.txt

ENTRYPOINT bash docker-entrypoint.sh
