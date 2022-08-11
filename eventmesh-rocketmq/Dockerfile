FROM ttbb/rocketmq:nake AS rocketmq

FROM ttbb/eventmesh:nake

COPY --from=rocketmq /opt/sh/rocketmq /opt/sh/rocketmq

ENV ROCKETMQ_HOME /opt/sh/rocketmq

WORKDIR /opt/sh

CMD ["/usr/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]
