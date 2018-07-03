# eventstore-docker

EventStore with Changed Ports for Testing

https://github.com/EventStore/eventstore-docker

```

#build image
docker build -t softwarepionioniere/eventstore:latest .

#run container
docker run --name eventstore-node -it --rm -p 2193:2193 -p 1193:1193 -p 1195:1195 softwarepionioniere/eventstore

# open url
http://localhost:2193


```
