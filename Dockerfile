FROM python:3.7.3

ADD . /var/www/sample-django-app

WORKDIR /var/www/sample-django-app

RUN pip3 install -r requirements.txt

EXPOSE 8002

RUN ./manage.py makemigrations

RUN ./manage.py migrate

CMD ./manage.py runserver 0.0.0.0:8002
