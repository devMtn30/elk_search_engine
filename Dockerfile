FROM docker.elastic.co/logstash/logstash:7.17.4
ENV JAVA_OPTS="-Dfile.encoding=UTF-8"
COPY logstash/pipeline/mysql-connector-java-8.0.23.jar /usr/share/logstash/mysql-connector-java-8.0.23.jar
COPY logstash/pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf
