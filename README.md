# eventstore-docker

EventStore with Changed Ports for Testing

https://github.com/EventStore/eventstore-docker

```

#build image
docker build -t softwarepioniere/eventstore:5.0.1 .
docker tag softwarepioniere/eventstore:5.0.1 softwarepioniere/eventstore:latest

#build cluster images
pushd cluster-node1
docker build -t softwarepioniere/eventstore-node1:5.0.1 .
docker tag softwarepioniere/eventstore-node1:5.0.1 softwarepioniere/eventstore-node1:latest

popd
pushd cluster-node2
docker build -t softwarepioniere/eventstore-node2:5.0.1 .
docker tag softwarepioniere/eventstore-node2:5.0.1 softwarepioniere/eventstore-node2:latest

popd
pushd cluster-node2
docker build -t softwarepioniere/eventstore-node3:5.0.1 .
docker tag softwarepioniere/eventstore-node3:5.0.1 softwarepioniere/eventstore-node3:latest
popd

#run cluster
docker-compose up --remove-orphans


#push images
docker push softwarepioniere/eventstore:5.0.1
docker push softwarepioniere/eventstore-node1:5.0.1
docker push softwarepioniere/eventstore-node2:5.0.1
docker push softwarepioniere/eventstore-node3:5.0.1

docker push softwarepioniere/eventstore:latest
docker push softwarepioniere/eventstore-node1:latest
docker push softwarepioniere/eventstore-node2:latest
docker push softwarepioniere/eventstore-node3:latest


#run container
docker run --name eventstore-node -it --rm -p 2193:2193 -p 1193:1193 -p 1195:1195 softwarepioniere/eventstore

# open url
http://localhost:2193


```


```
# Start Local Dev Cluster

start EventStore.ClusterNode.exe --mem-db --log .\logs\log1 --int-ip 127.0.0.1 --ext-ip 127.0.0.1 --int-tcp-port=1111 --ext-tcp-port=1112 --int-http-port=1113 --ext-http-port=1114 --cluster-size=3 --discover-via-dns=false --gossip-seed=127.0.0.1:2113,127.0.0.1:3113 --run-projections=all

start EventStore.ClusterNode.exe --mem-db --log .\logs\log2 --int-ip 127.0.0.1 --ext-ip 127.0.0.1 --int-tcp-port=2111 --ext-tcp-port=2112 --int-http-port=2113 --ext-http-port=2114 --cluster-size=3 --discover-via-dns=false --gossip-seed=127.0.0.1:1113,127.0.0.1:3113 --run-projections=all

start EventStore.ClusterNode.exe --mem-db --log .\logs\log3 --int-ip 127.0.0.1 --ext-ip 127.0.0.1 --int-tcp-port=3111 --ext-tcp-port=3112 --int-http-port=3113 --ext-http-port=3114 --cluster-size=3 --discover-via-dns=false --gossip-seed=127.0.0.1:1113,127.0.0.1:2113 --run-projections=all

```
