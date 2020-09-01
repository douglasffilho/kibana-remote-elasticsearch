#!/usr/bin/env bash

containers=$(docker ps -a | grep 5601/tcp | cut -d' ' -f 1)
for container in $containers; do 
    docker container stop "${container}"
    docker container rm "${container}"
done

cd /home/douglasffilho/workspace/BNW/kibanas/kibana-prod/
docker-compose up -d

cd /home/douglasffilho/workspace/BNW/kibanas/kibana-qa/
docker-compose up -d

echo '\n'
for i in $(seq 40 -1 0); do
    echo -n "\rPlease wait for $i s"
    sleep 1s
done

echo -n "\rAwwwwyeeehh! Now you can use kibana locally."
echo ''
