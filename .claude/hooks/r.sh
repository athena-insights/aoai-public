#!/bin/sh
set -eu

[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

. "$CLAUDE_PROJECT_DIR/versions.env"
export DEBIAN_FRONTEND=noninteractive

if ! command -v rig >/dev/null 2>&1; then
	curl -sSfL https://github.com/r-lib/rig/releases/download/latest/rig-linux-latest.tar.gz \
		| tar xz -C /usr/local
fi

if ! dpkg -s gfortran libcurl4-openssl-dev >/dev/null 2>&1; then
	apt-get update -qq
	apt-get install -y -qq --no-install-recommends build-essential gfortran \
		libcurl4-openssl-dev libssl-dev libxml2-dev libicu-dev zlib1g-dev
fi

if ! rig ls 2>/dev/null | grep -qw "$R"; then
	rig add "$R"
fi
rig default "$R"

export MAKEFLAGS="-j$(nproc)"
export RENV_CONFIG_REPOS_OVERRIDE=https://cloud.r-project.org
( cd "$CLAUDE_PROJECT_DIR" && Rscript -e 'renv::restore(prompt=FALSE)' )
