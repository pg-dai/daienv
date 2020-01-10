current = `pwd`
assets = assets
docs   = docs
libs    = libs

bashrc     = .bashrc
bash_dir   = .bash
bash_files = alias bind export func opt

bashdoc:
	cd assets/.bash; ../../libs/bashdoc/bashdoc \
	-o ../../docs/bashdoc.html \
	$(bash_files);


install:
	ln -nfs assets/.bashrc $HOME/.
	ln -nfs assets/.bash/ $HOME/.
