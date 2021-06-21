#!/usr/bin/env bash

containers=$(docker ps -a | grep 5601/tcp | cut -d' ' -f 1)
for container in $containers; do 
    docker container stop "${container}"
    docker container rm "${container}"
done

local_dir="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd $local_dir/kibana-prod/
docker-compose down -v

cd $local_dir/kibana-qa/
docker-compose down -v

echo 'Shutdown complete'
