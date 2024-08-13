all: build sync

build:
	hugo

sync:
	rsync -avzhe 'ssh -p 2222' --delete --exclude '.*' public/ wmceds@dominios02.ita.br:

docker: docker_build sync

# Veja: https://github.com/peaceiris/hugo-extended-docker
docker_build:
	docker compose run --rm hugo ""