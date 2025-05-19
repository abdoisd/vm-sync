.PHONY: all build up down clean

all: build up

build:
	docker-compose build

up:
	docker-compose up -d

# stop and rm containers make by this compose
down:
	docker-compose down

clean:
	docker-compose down -v

fclean:	clean
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force

list:
	docker ps
	docker ps -a
	docker images
	docker volume ls
	docker network ls

