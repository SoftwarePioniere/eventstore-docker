FROM eventstore/eventstore:release-5.0.5

ENV EVENTSTORE_CLUSTER_GOSSIP_PORT=3123

COPY eventstore.conf /etc/eventstore/
COPY softwarepioniere_dev.pfx /src/

HEALTHCHECK --timeout=2s CMD curl -sf http://localhost:3124/stats || exit 1

EXPOSE 3121 3122 3123 3124 3125

