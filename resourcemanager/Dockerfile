FROM hadoopbase

ADD --chown=yarn:yarn initResourceManager.sh /home/yarn/
ADD --chown=yarn:yarn startResourceManager.sh /home/yarn/

RUN chmod +x /home/yarn/*.sh

EXPOSE 8088

ENTRYPOINT ["/home/yarn/initResourceManager.sh"]
