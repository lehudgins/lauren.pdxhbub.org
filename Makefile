pull:
	git pull

start:
	harp server

compile:
	harp compile
	
upload: 
	rsync -avz --exclude='.git/' www/ lhudgins_laurenhudginsnext@ssh.phx.nearlyfreespeech.net:./

deploy: compile upload

update: pull deploy

listen: # requires $FISH_SECRET
	gitfish -p 8766 --branches master -c "make update"
