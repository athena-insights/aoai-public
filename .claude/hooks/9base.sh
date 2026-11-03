#!/bin/sh
set -eu

[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

export DEBIAN_FRONTEND=noninteractive
if ! dpkg -s 9base >/dev/null 2>&1; then
	apt-get update -qq
	apt-get install -y -qq --no-install-recommends 9base
fi

mkdir -p "$HOME/.local/bin"
ln -sf "$CLAUDE_PROJECT_DIR/9base/9" "$HOME/.local/bin/9"
ln -sf "$CLAUDE_PROJECT_DIR/9base/u" "$HOME/.local/bin/u"

if [ -n "${CLAUDE_ENV_FILE:-}" ] && ! grep -q '^export PLAN9=' "$CLAUDE_ENV_FILE" 2>/dev/null; then
	echo 'export PLAN9=/usr/lib/plan9' >> "$CLAUDE_ENV_FILE"
fi
