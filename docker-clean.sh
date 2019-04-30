#!/bin/bash

# Remove all processes
# docker rm -f $(docker ps -aq)

# Remove hadoop images
docker images | egrep "hadoop|namenode|datanode|resourcemanager|nodemanager" | egrep -v hadoopbase | cut -f1 -d" " | xargs docker image rm -f 

# Remove stale images
docker image prune <<EOF
y
EOF

# Remove stale volumes
docker volume prune <<EOF
y
EOF
