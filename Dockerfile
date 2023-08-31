# syntax=docker/dockerfile:1

FROM python:3.11.4-bookworm

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

ENV secretpassword=wakanda4eva

WORKDIR /contrans2023

CMD ["Jupyter","lab","--ip=0.0.0.","--allow-root"]

