FROM       amazon/aws-cli:2.15.16
COPY       run.sh /
ENTRYPOINT ["bash", "/run.sh"]