MKSHELL=rc

DIRS=data/tracker-alfa data/tracker-bravo tracker-reports www

all:V:
	for(d in $DIRS) @{ cd $d && mk }

clean:V:
	for(d in $DIRS) @{ cd $d && mk clean }

check:V:
	for(d in $DIRS) @{ cd $d && mk check }

<versions.env

tools:V:
	brew bundle --file=Brewfile
	brew list --versions typst@$TYPST >/dev/null || brew version-install typst@$TYPST
	rig ls | grep -qw $R || rig add $R
	rig default $R

STUDIES=data/tracker-alfa data/tracker-bravo

setup:V:
	@{ cd fonts && mk unpack-fonts }
	for(s in $STUDIES) @{ cd $s && mk unpack-raws }
	mk setup-r

setup-r:V:
	u Rscript -e 'renv::restore(prompt=FALSE)'
