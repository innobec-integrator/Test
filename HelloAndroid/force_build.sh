#!/bin/bash

pushd `dirname $0` > /dev/null
uuidgen > ./force_build
git commit -m"Forcing revision change and triggering CI." ./force_build
git push
popd > /dev/null
