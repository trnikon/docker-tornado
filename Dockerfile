FROM python:3

RUN apt-get update
RUN pip3 install --upgrade pip

WORKDIR /var/www/app

COPY app ./
RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD python server.py