FROM docker.elastic.co/logstash/logstash:7.17.4
ENV JAVA_OPTS="-Dfile.encoding=UTF-8"
COPY logstash/pipeline/ojdbc8.jar /usr/share/logstash/ojdbc8.jar
COPY logstash/pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf