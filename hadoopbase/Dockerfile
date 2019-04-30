
FROM ubuntu

# Temporary files
ADD [ \
		"core-site.xml", \
		"hdfs-site.xml", \
		"mapred-site.xml", \  
		"yarn-site.xml", \
		"cluster.env", \
		"/tmp/" \
	]

# Install java and hadoop binaries
RUN \
 apt-get update && \
 apt-get install wget openjdk-8-jdk -y && \
 useradd -U hadoop && \
 useradd -U hdfs -G hadoop && \
 useradd -U yarn -G hadoop && \
 useradd -U hive && \
 useradd -U spark && \
 useradd -U zeppelin && \
 cd /opt && \
 wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/hadoop/common/hadoop-3.1.2/hadoop-3.1.2.tar.gz && \
 tar -xvf hadoop-3.1.2.tar.gz && \
 mkdir -v -p /opt/hadoop-3.1.2/logs && \
 chown -v hadoop:hadoop -R hadoop-3.1.2 && \
 chmod -v -R 774 /opt/hadoop-3.1.2/logs && \
 ln -v -s /opt/hadoop-3.1.2 /opt/hadoop && \
 cp -v /tmp/*-site.xml /opt/hadoop-3.1.2/etc/hadoop/. && \
 cp -v /tmp/cluster.env /opt/hadoop-3.1.2/. && \
 rm -v hadoop-3.1.2.tar.gz 
