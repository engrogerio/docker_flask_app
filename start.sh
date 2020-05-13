#!/bin/bash
app="flask.test"
docker stop ${app}
docker rm ${app}
docker build -t ${app} .
docker run -d -p 8080:8080 \
  --name=${app} \
  ${app}
docker logs ${app}
