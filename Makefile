docker:
	cd build && wget https://caddyserver.com/download/build\?os\=linux\&arch\=amd64\&features\=ovh -q -O caddy.tar.gz && tar -xzf caddy.tar.gz
	sudo docker build -t albinos/docker-caddy .
	rm -rf build/*

docker_push:
	sudo docker push albinos/docker-caddy

docker_all: docker docker_push