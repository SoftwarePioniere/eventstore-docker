FROM eventstore/eventstore:release-5.0.1

ENV EVENTSTORE_CLUSTER_GOSSIP_PORT=2192

COPY eventstore.conf /etc/eventstore/
COPY softwarepioniere_dev.pfx /src/

HEALTHCHECK --timeout=2s CMD curl -sf http://localhost:2193/stats || exit 1

EXPOSE 1192 2192 1193 2193 1195