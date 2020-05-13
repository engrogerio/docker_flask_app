# https://mherman.org/presentations/dockercon-2018/
#https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx/

FROM tiangolo/uwsgi-nginx:python3.7

WORKDIR /app
COPY ./app /app

# set uwsgi environment variables
ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1
ENV UWSGI_CHEAPER 2
ENV UWSGI_PROCESSES 16
ENV LISTEN_PORT 8080

# set nginx environment variables
ENV NGINX_WORKER_PROCESSES auto



# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt
EXPOSE 8080


