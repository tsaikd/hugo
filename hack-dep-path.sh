#!/bin/bash

PN="${BASH_SOURCE[0]##*/}"
PD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "${PD}" >/dev/null

find -iname \*.go -exec sed -i 's/"github.com\/spf13\/hugo/"github.com\/tsaikd\/hugo/g' "{}" \; && \
	git commit -asm "hack dependency path"

popd >/dev/null

