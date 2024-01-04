FROM python:3.10-alpine

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 3000

ENTRYPOINT [ "gunicorn" ]
CMD [ "app:app", "-b", "0.0.0.0:3000" ]
