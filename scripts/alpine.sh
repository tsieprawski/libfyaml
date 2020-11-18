#!/bin/sh -x
rm -f *.apk

docker build -t mgdkn/fyaml -f scripts/Dockerfile.alpine-apk . || exit 1
docker create --rm --name tmp-fyaml mgdkn/fyaml || exit 1
docker cp tmp-fyaml:/fyaml.apk . || exit 1
docker cp tmp-fyaml:/fyaml-dev.apk . || exit 1
docker rm tmp-fyaml

ls *.apk
