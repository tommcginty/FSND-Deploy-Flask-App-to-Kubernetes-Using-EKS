FROM python:stretch

COPY . /app
WORKDIR /app

RUN install -r requirements.txt

ENTRYPOINT [“gunicorn", "-b", ":8080", "main:APP”]