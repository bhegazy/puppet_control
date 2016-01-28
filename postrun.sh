#!/bin/bash
set -x

#/bin/gzip -vf /opt/puppetlabs/server/data/puppetserver/r10k/git@github.com-bhegazy-pp-control.git/objects/pack/*
pushd "/opt/puppetlabs/server/data/puppetserver/r10k/git@github.com-bhegazy-pp-control.git/objects/pack/"
ls -1 | find . -printf "%T@ %Tc %p\n" | sort -n -r | tail -n +6 | xargs /bin/gzip -vf > /dev/null 2>&1

popd

