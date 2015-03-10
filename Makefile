pull:
	git pull

compile:
	harp compile
	
upload: 
	rsync -avz www/ lhudgins_laurenhudginsnext@ssh.phx.nearlyfreespeech.net:./

deploy: compile upload

update: pull deploy
