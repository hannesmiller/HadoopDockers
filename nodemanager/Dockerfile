FROM hadoopbase

ADD --chown=yarn:yarn initNodeManager.sh /home/yarn/
ADD --chown=yarn:yarn startNodeManager.sh /home/yarn/

RUN chmod +x /home/yarn/*.sh

EXPOSE 8042

ENTRYPOINT ["/home/yarn/initNodeManager.sh"]
