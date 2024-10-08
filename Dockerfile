FROM python:3.8.5-alpine3.12

RUN apt-get -y update && apt-get -y install curl

WORKDIR /usr/src/app

COPY app.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "app.py" ]
