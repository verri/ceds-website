all:
	hugo
	rsync -avzhe 'ssh -p 2222' --delete --exclude '.*' public/ wmceds@dominios02.ita.br:
