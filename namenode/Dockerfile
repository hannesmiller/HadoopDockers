FROM hadoopbase

ADD --chown=hdfs:hdfs initNameNode.sh /home/hdfs/
ADD --chown=hdfs:hdfs startNameNode.sh /home/hdfs/

RUN chmod +x /home/hdfs/*.sh

# For Hadoop 3.0 NameNode UI port has changed from 50070 to 9870
EXPOSE 9870

ENTRYPOINT ["/home/hdfs/initNameNode.sh"]

