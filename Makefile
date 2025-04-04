install: tangle stow
	echo "We are done!"

stow: cp-backgrounds
	stow -t ~ -d ${PWD}/home/ . --no-folding

tangle: tangle.el didc.org
	emacs --script tangle.el

cp-backgrounds: backgrounds
	mkdir -p ${PWD}/home/.local/share/backgrounds
	cp ${PWD}/backgrounds/* ${PWD}/home/.local/share/backgrounds/ -r

arch-install-deps: archpkglist
	pacman -S - < archpkglist
