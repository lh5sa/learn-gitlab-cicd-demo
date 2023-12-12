#!/bin/bash

docker_container_name="learn-gitlab-runner-demo"
docker_image_name="nginx:stable"

# 先停止原来的
docker stop $docker_container_name
docker rm $docker_container_name

# 启动容器
docker run -d \
	-p 80:80 \
	-v $(pwd)/public:/usr/share/nginx/html \
	--name $docker_container_name $docker_image_name
