#!/bin/bash
mkdir -p /hdfsdata/dfs/dn
chown -R hdfs:hdfs /hdfsdata
su -s /bin/bash --login - hdfs -c "/home/hdfs/startDataNode.sh"
