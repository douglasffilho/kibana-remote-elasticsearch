# kibana-remote-elasticsearch
Connects Kibana to a remote elasticsearch cluster using docker-compose

# Requirements:
- Docker
- Docker Compose
- Good connection with elasticsearch cluster

## Build and Run
```bash
docker build -t docker.elastic.co/kibana/kibana:7.17.1-local .
docker-compose up -d
```

## Build and Run ARM64 arch
```bash
docker build --platform linux/arm64 -t docker.elastic.co/kibana/kibana:7.17.1-local .
docker-compose up -d
```

### Enjoy

- [kibana PROD](http://localhost:5601)
- [kibana QA](http://localhost:5602)
