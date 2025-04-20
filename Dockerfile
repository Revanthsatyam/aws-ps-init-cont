FROM       amazon/aws-cli:2.15.16
COPY       run.sh /app
ENTRYPOINT ["bash", "/run.sh"]