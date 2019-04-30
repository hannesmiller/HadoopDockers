#!/bin/bash
curdir=$(pwd)
# cd ./hadoopbase && ./build.sh && cd $curdir
cd ./namenode && ./build.sh && cd $curdir
cd ./datanode && ./build.sh && cd $curdir
cd ./resourcemanager && ./build.sh && cd $curdir
cd ./nodemanager && ./build.sh && cd $curdir
docker-compose build
