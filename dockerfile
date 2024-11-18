Dockerfile:
FROM python:3.9-slim




WORKDIR /python-docker


COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


COPY . .


CMD [ "python3", "app.py"]

