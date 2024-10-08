FROM python:3.8.5-alpine3.12

#FROM arm64v8/python:alpine3.19

WORKDIR /usr/src/app

COPY app.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "app.py" ]
