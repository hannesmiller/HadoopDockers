#!/bin/bash
docker image rm -f hadoopbase
docker build -t hadoopbase .
