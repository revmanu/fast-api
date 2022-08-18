FROM python:latest
WORKDIR /fastapi-docker
ADD requirements.txt /
RUN pip install -r /requirements.txt
COPY ./app ./app
CMD ["python", "./app/main.py"]
