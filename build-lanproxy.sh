#!/bin/bash

type=$(echo $0 | sed 's/.*-\(.*\).sh/\1/')
version=$(date +"%FT%H.%M.%S")

docker build -t hub.dosec.cn/library/$type:$version . && sed 's/\('$type':\).*[0-9]/\1'${version}'/' -i start.sh
# docker push hub.dosec.cn/library/dosec-$type:$version
