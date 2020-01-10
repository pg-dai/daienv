current = `pwd`
assets = assets
docs   = docs
lib    = lib

bashrc     = .bashrc
bash_dir   = .bash
bash_files = alias bind export func opt

bashdoc:
	cd assets/.bash; ../../lib/bashdoc/bashdoc \
	-o ../../docs/bashdoc.html \
	$(bash_files);


install:
	ln -nfs assets/.bashrc $HOME/.
	ln -nfs assets/.bash/ $HOME/.