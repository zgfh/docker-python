FROM python:3.6

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY src /app

EXPOSE 8080
CMD [ "python", "app.py" ]