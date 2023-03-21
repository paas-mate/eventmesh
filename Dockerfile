FROM shoothzj/compile:jdk17-gradle

RUN git clone --depth 1 https://github.com/apache/incubator-eventmesh.git && \
    cd incubator-eventmesh
