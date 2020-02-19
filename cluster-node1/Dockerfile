FROM eventstore/eventstore:release-5.0.5

ENV EVENTSTORE_CLUSTER_GOSSIP_PORT=3113

COPY eventstore.conf /etc/eventstore/
COPY softwarepioniere_dev.pfx /src/

HEALTHCHECK --timeout=2s CMD curl -sf http://localhost:3114/stats || exit 1

EXPOSE 3111 3112 3113 3114 3115

