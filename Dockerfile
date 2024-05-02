FROM python:3.10-buster

RUN git clone -b Bagaskara-Userbot https://github.com/Teemsoha/xxxxxxza /home/bagaskara-userbot2/ \
    && chmod 777 /home/bagaskara-userbot2 \
    && mkdir /home/bagaskara-userbot2/bin/

COPY ./sample_config.env ./config.env* /home/bagaskara-userbot2/

WORKDIR /home/bagaskara-userbot2/

CMD ["python3", "-m", "userbot"]
