#!/bin/bash
if [ ! -d "gibbon-docker" ] ; then
    git clone https://github.com/kerrongordon/gibbon-docker.git
fi
if [ ! -d "docker-postgis" ] ; then
    git clone https://github.com/kartoza/docker-postgis.git
fi
if [ ! -d "docker-tao-web" ] ; then
    git clone https://github.com/kartoza/docker-tao-web.git
fi
if [ ! -d "docker-moodle" ] ; then
    https://github.com/jmhardison/docker-moodle.git
fi
#cd gibbon-docker && docker-compose up -d
#echo "gibbonedu up..."
#cd .. && cd docker-compose-moodle
#docker-compose up  -d
#echo "moodle up..." && cd ..
#cd docker-tao-web
#./build.sh
./run.sh
echo "tao-web up..."



