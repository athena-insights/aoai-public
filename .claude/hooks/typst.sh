#!/bin/sh
set -eu

[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

. "$CLAUDE_PROJECT_DIR/versions.env"
ARCH=x86_64-unknown-linux-musl

if [ "$(typst --version 2>/dev/null | cut -d' ' -f2)" != "$TYPST" ]; then
	tmp=$(mktemp -d)
	curl -sSfL -o "$tmp/typst.tar.xz" \
		"https://github.com/typst/typst/releases/download/v$TYPST/typst-$ARCH.tar.xz"
	tar -xJf "$tmp/typst.tar.xz" -C "$tmp"
	install -m 755 "$tmp/typst-$ARCH/typst" /usr/local/bin/typst
	rm -rf "$tmp"
fi
