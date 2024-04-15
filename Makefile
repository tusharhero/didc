install: tangle stow
	echo "We are done!"
stow: cp-backgrounds
	stow -t ~ -d ${PWD}/home/ .
tangle:
	emacs --script tangle.el
cp-backgrounds:
	mkdir -p ${PWD}/home/.local/share/
	cp ${PWD}/backgrounds ${PWD}/home/.local/share/backgrounds -r
