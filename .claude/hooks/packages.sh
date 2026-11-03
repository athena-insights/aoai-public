#!/bin/sh
set -eu

[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

export DEBIAN_FRONTEND=noninteractive

if ! command -v sqlite3 >/dev/null 2>&1 || ! command -v zip >/dev/null 2>&1 || ! command -v unzip >/dev/null 2>&1; then
	apt-get update -qq
	apt-get install -y -qq --no-install-recommends sqlite3 zip unzip
fi
