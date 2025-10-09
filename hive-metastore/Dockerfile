FROM  apache/hive:4.0.0
USER root
RUN apt-get update && apt-get install -y curl wget

# Set envs
ENV DB_DRIVER=mysql
ENV HIVE_CUSTOM_CONF_DIR=/hive_custom_conf

RUN wget -P /opt/hive/lib https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.30/mysql-connector-java-8.0.30.jar
RUN wget -P /opt/hive/lib https://repo1.maven.org/maven2/org/apache/hudi/hudi-hadoop-mr-bundle/1.0.1/hudi-hadoop-mr-bundle-1.0.1.jar

# Create an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
