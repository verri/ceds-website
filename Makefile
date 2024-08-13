all: build sync

build:
	hugo

sync:
	rsync -avzhe 'ssh -p 2222' --delete --exclude '.*' public/ wmceds@dominios02.ita.br:

docker: docker_build sync

docker_build:
	docker compose run --rm hugo ""