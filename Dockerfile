FROM python:3.10.3-slim-buster

WORKDIR /app

COPY . /app

RUN pip install -r requirement.txt

COPY . .

CMD python ./app.py