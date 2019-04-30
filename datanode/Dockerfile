FROM hadoopbase

ADD --chown=hdfs:hdfs initDataNode.sh /home/hdfs/
ADD --chown=hdfs:hdfs startDataNode.sh /home/hdfs/

RUN chmod +x /home/hdfs/*.sh

EXPOSE 50075

ENTRYPOINT ["/home/hdfs/initDataNode.sh"]
