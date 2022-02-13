FROM python:3.8.3-slim-buster

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

EXPOSE      8091
ENTRYPOINT  [ "python", "/app/main.py" ]
