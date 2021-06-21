#!/usr/bin/env bash

containers=$(docker ps -a | grep 5601/tcp | cut -d' ' -f 1)
for container in $containers; do 
    docker container stop "${container}"
    docker container rm "${container}"
done

local_dir="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd $local_dir/kibana-prod/
docker-compose down -v
docker-compose up -d

cd $local_dir/kibana-qa/
docker-compose down -v
docker-compose up -d

echo '\n'
for i in $(seq 40 -1 0); do
    echo -n "\rPlease wait for $i s\t"
    sleep 1s
done

echo -n "\rAwwwwyeeehh! Now you can use kibana locally."
echo ''
