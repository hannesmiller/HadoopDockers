FROM hadoopbase

ADD --chown=hdfs:hdfs initNameNode.sh /home/hdfs/
ADD --chown=hdfs:hdfs startNameNode.sh /home/hdfs/

RUN chmod +x /home/hdfs/*.sh

EXPOSE 50070

ENTRYPOINT ["/home/hdfs/initNameNode.sh"]

