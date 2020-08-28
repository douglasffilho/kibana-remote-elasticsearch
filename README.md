# kibana-remote-elasticsearch
Connects Kibana to a remote elasticsearch cluster using docker-compose

# Requirements:
- Docker
- Docker Compose
- Good connection with elasticsearch cluster

# Run:

**It will kill all docker containers that has internal port `5601/tcp` then start PROD and QA configured ones here**

You can run:
```bash
sh ./restart.sh
```
Or, you can create an alias inside your `~/.bashrc`:
```bash
alias kibana='sh /path/to/restart.sh'
```
Now, from terminal, run:
```bash
kibana
```

### Enjoy

- [kibana PROD](http://localhost:5601)
- [kibana QA](http://localhost:5602)
