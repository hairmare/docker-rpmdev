#!/bin/bash

readonly FILE=${SPECFILE-$1}

if [[ ! -f ${FILE} ]]; then
     echo "Could not find file: ${FILE}" 1>&2
     echo "Usage: ${0} <spec-file>" 1>&2
     exit 1
fi

set -xe

rpmdev-setuptree

spectool -R -g "${FILE}"

dnf builddep -y "${FILE}"

rpmbuild -ba "${FILE}"
