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

echo 'Pleases wait...'
for i in 0..40; do
    sleep(1000);
done

echo 'you can use kibana locally ihuuuuu!'
