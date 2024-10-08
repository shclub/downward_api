FROM python:3.8.5-alpine3.12

RUN apk update && apk add curl

WORKDIR /usr/src/app

COPY app.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "app.py" ]
