#!/bin/bash

IMAGE_NAME="deb_conf_test"

for id in $(docker ps -aq); do docker rm $id; done

if docker images | grep -q $IMAGE_NAME; then
	docker rmi $IMAGE_NAME
fi

docker build -t $IMAGE_NAME .

docker run -it --name $IMAGE_NAME $IMAGE_NAME > test.log

