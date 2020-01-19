#!/bin/bash

readonly DIR=${GITDIR-$1}
readonly FILE=${TARFILE-$2}

if [[ ! -d ${DIR} ]]; then
    echo "Could not find dir: ${DIR}" 1>&2
    echo "Usage: ${0} <git-dir> <target-file>" 1>&2
    exit 1
fi
if [[ ! ${FILE} ]]; then
    echo "No target file specified" 1>&2
    echo "Usage: ${0} <git-dir> <target-file>" 1>&2
    exit 1
fi

set -xe

rpmdev-setuptree

tar --exclude-vcs -C "${DIR}" --transform="s|/|/${FILE%%.tar*}/|" -cvf `rpmbuild --eval '%{_sourcedir}'`/${FILE} .
