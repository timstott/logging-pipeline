FROM golang:1.4

RUN git clone git://github.com/elasticsearch/logstash-forwarder.git src/
RUN cd src && git checkout -q v0.4.0 && go build -o logstash-forwarder && chmod +x logstash-forwarder
RUN mv src/logstash-forwarder bin/
