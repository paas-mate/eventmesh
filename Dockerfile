FROM ttbb/base:jdk8

WORKDIR /opt/sh

ENV EVENTMESH_HOME /opt/sh/eventmesh

RUN wget -q https://downloads.apache.org/incubator/eventmesh/1.8.0-incubating/apache-eventmesh-1.8.0-incubating-bin.tar.gz && \
mkdir -p /opt/sh/eventmesh && \
tar -xf apache-eventmesh-1.8.0-incubating-bin.tar.gz -C /opt/sh/eventmesh --strip-components 1 && \
rm -rf apache-eventmesh-1.8.0-incubating-bin.tar.gz
