MKSHELL=rc

AGE_PUB=age1rv0e36geywwpk23ykeemgl4q9ch5rrpy66d90jwq9pq6uhktxflq59surl
<|cat ../../.env >[2]/dev/null || true

unpack-raws:VQ:
	if(~ $#AGE_RAWS_KEY 0) { echo 'AGE_RAWS_KEY unset: put the raws key in .env at the root, or the environment (README, Encrypted archives)' >[1=2]; exit 1 }
	if(! ~ $AGE_RAWS_KEY AGE-SECRET-KEY-1*) { echo 'AGE_RAWS_KEY is not a secret key: it should be the one line beginning AGE-SECRET-KEY-1, with nothing around it, not even quotes or a space ('$#AGE_RAWS_KEY' word(s) seen)' >[1=2]; exit 1 }
	for(w in $WAVES) {
		echo unpacking $w/raws
		age -d -i <{echo $AGE_RAWS_KEY} $w/raws.zip.age > $w/raws.zip
		u unzip -n -q -d $w $w/raws.zip
	}

pack-raws:V:
	if(~ $#WAVE 0) { echo 'say which wave: 9 mk pack-raws WAVE=<wave>' >[1=2]; exit 1 }
	rm -f $WAVE/raws.zip
	@{ cd $WAVE && u zip -r -q raws.zip raws -x '*.DS_Store' }
	age -r $AGE_PUB $WAVE/raws.zip > $WAVE/raws.zip.age.part && mv $WAVE/raws.zip.age.part $WAVE/raws.zip.age

check:V:
	mk clean && mk all
	changed=`{git status --short -- $BUILT}
	if(~ $#changed 0) echo check: every committed output rebuilt identical
	if not { echo 'check: the rebuild changed these files:' >[1=2]; git status --short -- $BUILT; exit 1 }
