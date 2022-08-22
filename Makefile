CONTAINER_NAME := 'net-tools'

build_image:
	docker build --cache-from yvv4docker/net-tools:latest -t yvv4docker/net-tools:latest -f Dockerfile .

run_container:
	docker run -d --rm --name ${CONTAINER_NAME} yvv4docker/net-tools:latest

shell:
	docker exec -it net-tools bash

stop:
	docker stop net-tools

push_dockerhub:
	docker push yvv4docker/net-tools:latest