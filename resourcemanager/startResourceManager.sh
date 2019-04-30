#!/bin/bash
. /opt/hadoop/cluster.env
yarn --config $HADOOP_CONF_DIR resourcemanager
