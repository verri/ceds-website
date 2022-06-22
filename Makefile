all:
	hugo
	rsync -avzhe 'ssh -p 2222' --delete public/ wmceds@dominios02.ita.br:~/novo/
