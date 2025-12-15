FROM apache/spark:3.5.7-scala2.12-java11-ubuntu

# Set the SPARK_HOME environment variable
ENV SPARK_HOME=/opt/spark

# Download the necessary JAR and place it in the Spark jars directory
RUN wget -P ${SPARK_HOME}/jars https://repo1.maven.org/maven2/org/apache/hudi/hudi-utilities-bundle_2.12/1.1.1/hudi-utilities-bundle_2.12-1.1.1.jar
