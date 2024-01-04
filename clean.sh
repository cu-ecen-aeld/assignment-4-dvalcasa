#!/bin/bash
#Script to clean buildroot repo
#Author: dvalcasa

set -e 
cd `dirname $0`

echo "update submodule"
git submodule update --init --recursive

echo "Clean Buildroot repo"
cd buildroot
make distclean
