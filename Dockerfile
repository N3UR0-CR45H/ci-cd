FROM python:3

RUN apt-get update -y && apt-get upgrade -y

WORKDIR /app

COPY . /app 

RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["gunicorn", "app:app"]



