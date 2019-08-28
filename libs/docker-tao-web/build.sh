#!/bin/sh

docker pull arm64v8/mariadb
docker build -t dbcaturra/tao-web .
