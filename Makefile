all:
	mkdir -p /home/ncallie/data/mariadb
	mkdir -p /home/ncallie/data/wordpress
	docker compose -f ./srcs/docker-compose.yml up -d

build:
	docker compose -f ./srcs/docker-compose.yml build

up:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

fclean:
	docker system prune -a --force

delvolume:
	docker volume  rm srcs_mariadb
	docker volume  rm srcs_wordpress
	sudo rm -rf /home/ncallie/data/mariadb/*
	sudo rm -rf /home/ncallie/data/wordpress/*
info:
	docker images -qa
	docker ps -qa
	docker network ls
	docker container ls
	docker image ls
	docker volume ls -q

	docker network rm $(docker network ls -q) 2>/dev/null
