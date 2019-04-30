#!/bin/bash
. /opt/hadoop/cluster.env
if [ -z "$(ls -A /hdfsdata/dfs/nn)" ]
then
  echo *** Formatting HDFS for cluster $CLUSTER_NAME ***
  hdfs namenode -format $CLUSTER_NAME
  echo *** Formatted HDFS for cluster $CLUSTER_NAME ***
fi
hdfs --config $HADOOP_CONF_DIR namenode
