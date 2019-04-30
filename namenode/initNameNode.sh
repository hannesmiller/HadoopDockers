#!/bin/bash
mkdir -p /hdfsdata/dfs/nn
chown -R hdfs:hdfs /hdfsdata
ls -ld /hdfsdata/dfs/nn
su -s /bin/bash --login - hdfs -c "/home/hdfs/startNameNode.sh"
