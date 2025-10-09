FROM quay.io/debezium/connect:3.0

# Download Confluent Schema Registry JARs
RUN docker-maven-download confluent kafka-connect-avro-converter 7.9.0 183e0199fb85d24c0bcca22c1ede511e \
    && docker-maven-download confluent kafka-connect-avro-data 7.9.0 841e68574e9eb552a4f2752975267a22 \
    && docker-maven-download confluent kafka-avro-serializer 7.9.0 d77ccb260ac3a2b8bc322bd2d2ea70c2 \
    && docker-maven-download confluent kafka-schema-serializer 7.9.0 2d9890f32811c6adc47c48cf91300384 \
    && docker-maven-download confluent kafka-schema-converter 7.9.0 e97a84709b2518ab97f83596e48c2c37 \
    && docker-maven-download confluent kafka-schema-registry-client 7.9.0 cd0bdd273f4fbca342be26361cf8934e \
    && docker-maven-download confluent common-config 7.9.0 9bcdf1e53f73f690165c1800a81c05b6 \
    && docker-maven-download confluent common-utils 7.9.0 8cf16e6afc4b95ab070128112932bcfb

# Download additional required JARs
RUN docker-maven-download central org/apache/avro avro 1.12.0 21fa3115ff1dc131ca6432bc73927fa5 \
    && docker-maven-download central org/apache/commons commons-compress 1.27.1 1db4bd87b0082044c6e7a6af0b977a3e \
    && docker-maven-download central com/google/guava failureaccess 1.0.2 3f75955b49b6758fd6d1e1bd9bf777b3 \
    && docker-maven-download central com/google/guava guava 33.4.0-jre 5732af16367192820c7bf177e9b29512 \
    && docker-maven-download central com/eclipsesource/minimal-json minimal-json 0.9.5 b654083f16dfe1856a42bf356c399f79 \
    && docker-maven-download central com/google/re2j re2j 1.7 deb6ffa7ed6d2cc06e6ac1182755c735 \
    && docker-maven-download central org/slf4j slf4j-api 2.0.16 c8de8f5d740584cb24b5652cfba8b3c4 \
    && docker-maven-download central org/yaml snakeyaml 2.3 2a1c2ee8923dcd6bd6d025751af5df37 \
    && docker-maven-download central io/swagger/core/v3 swagger-annotations 2.2.27 b4bb05bf9161df53de9e26ef05f21a64 \
    && docker-maven-download central com/fasterxml/jackson/core jackson-databind 2.18.2 1b56887bcd3eaea1ff710eb673e610b0 \
    && docker-maven-download central com/fasterxml/jackson/core jackson-core 2.18.2 bf935e6eca3a57defa13918661905cb0 \
    && docker-maven-download central com/fasterxml/jackson/core jackson-annotations 2.18.2 79d38d3c51068a2bbc40268d02f80763 \
    && docker-maven-download central com/fasterxml/jackson/dataformat jackson-dataformat-csv 2.18.2 6c8d7295836678cacf4ea77b06c17d2f \
    && docker-maven-download central io/confluent logredactor 1.0.12 a88bfeacc83968a1adb159ebd86081d1 \
    && docker-maven-download central io/dropwizard/metrics metrics-core 4.2.29 291e828f83cafbfe69be56df0df794bc
