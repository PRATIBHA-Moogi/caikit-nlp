#! /bin/sh -x

#on Mac, you don't have docker support, ensure you got podman, you need to initialise and start it beforehand

#podman machine init; podman machine start

podman rm -f jaeger  

#grpc port 4317, http port 4318 for otel exporting

podman run -it  -d --name jaeger \
  -p 5775:5775/udp \
  -p 6831:6831/udp \
  -p 6832:6832/udp \
  -p 5778:5778 \
  -p 16686:16686 \
  -p 14268:14268 \
  -p 14250:14250 \
  -p 9411:9411 \
  -p 4317:4317 \
  -p 4318:4318 \
  jaegertracing/all-in-one:1.49 

#to start the container process and attaching it with the created container id e.g. 4d910f206632
export containerid=`podman ps | awk '{print $1}' | tail -n 1`

podman start $containerid ; podman attach $containerid
