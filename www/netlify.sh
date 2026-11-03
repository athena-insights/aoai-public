#!/bin/sh
set -eu

. ../versions.env
: "${AGE_FONTS_KEY:?AGE_FONTS_KEY unset: set the fonts key in the site's environment variables on Netlify}"
tmp=$(mktemp -d)

curl -sSfL --retry 3 --retry-delay 5 "https://github.com/FiloSottile/age/releases/download/v$AGE/age-v$AGE-linux-amd64.tar.gz" | tar xz -C "$tmp"

curl -sSfL --retry 3 --retry-delay 5 -o "$tmp/9base.deb" "http://archive.ubuntu.com/ubuntu/pool/universe/9/9base/9base_${NINEBASE}_amd64.deb" ||
	curl -sSfL --retry 3 --retry-delay 5 -o "$tmp/9base.deb" "https://launchpad.net/ubuntu/+archive/primary/+files/9base_${NINEBASE}_amd64.deb"
dpkg -x "$tmp/9base.deb" "$tmp/9base"
PLAN9=$tmp/9base/usr/lib/plan9
mv "$PLAN9/bin/rc" "$PLAN9/bin/rc.bin"
printf '#!/bin/sh\nexec "%s/bin/rc.bin" -m "%s/etc/rcmain" "$@"\n' "$PLAN9" "$PLAN9" > "$PLAN9/bin/rc"
chmod +x "$PLAN9/bin/rc"
export PLAN9
PATH=$tmp/age:$PWD/../9base:$PATH

case "${CONTEXT:-}" in
production) ORIGIN=${URL:-} ;;
*) ORIGIN=${DEPLOY_PRIME_URL:-} ;;
esac
9 mk all ORIGIN="$ORIGIN"
