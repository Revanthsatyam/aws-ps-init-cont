FROM    amazon/aws-cli:2.15.16
RUN     mkdir /app
WORKDIR /app
COPY    run.sh /app/
ENTRYPOINT ["bash", "/app/run.sh"]