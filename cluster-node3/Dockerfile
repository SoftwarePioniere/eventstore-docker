FROM eventstore/eventstore:latest

ENV EVENTSTORE_CLUSTER_GOSSIP_PORT=3133

COPY eventstore.conf /etc/eventstore/
COPY softwarepioniere_dev.pfx /src/

HEALTHCHECK --timeout=2s CMD curl -sf http://localhost:3134/stats || exit 1

EXPOSE 3131 3132 3133 3134 3135

