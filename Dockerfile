FROM shoothzj/compile:jdk17-gradle as compiler

RUN git clone --depth 1 https://github.com/apache/incubator-eventmesh.git && \
    cd incubator-eventmesh && \
    gradle clean jar dist -x test -x spotbugsMain

RUN shoothzj/base:jdk17

COPY --from=compiler /incubator-eventmesh/dist /opt/eventmesh

ENV EVENTMESH_HOME /opt/eventmesh

WORKDIR /opt/eventmesh
