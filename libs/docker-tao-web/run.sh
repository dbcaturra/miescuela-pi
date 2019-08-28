#!/bin/sh
docker kill tao-web
docker rm tao-web
docker kill tao-postgis
docker rm tao-postgis
MYSQLPWD=`pwgen 20 1`
docker run --name="tao-postgis" --hostname="tao-postgis" --restart="always" -d -t dbcaturra/postgres
docker run --name="tao-web" --hostname="tao-web" --restart="always" -d -t -p 8002:80 --link tao-postgis:tao-postgis dbcaturra/tao-web
echo "Your tao is running - use postgres host 'tao-postgis' and password '${MYSQLPWD}' when setting up the connections in tao."

