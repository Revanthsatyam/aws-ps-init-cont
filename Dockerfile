FROM       amazon/aws-cli:2.15.16
RUN        yum install jq -y
COPY       run.sh /
ENTRYPOINT ["bash", "/run.sh"]