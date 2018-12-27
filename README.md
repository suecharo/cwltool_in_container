# cwltool_in_container

docker-compose.yml for running cwltool in the docker container

## What is this?

- Within Docker Container, Dockerfile and docker-compose.yml for using cwltool
  - When using Docker in cwltool in a container, use Host's Docker
  - This is mounting `${PWD}`, `/tmp`, `/var/run/docker.sock` and `/usr/bin/docker`

## How to use

```bash
$ git clone https://github.com/suecharo/cwltool_in_container.git
$ cd cwltool_in_container
$ docker-compose up -d --build
$ docker-compose exec cwltool bash
```

## Our Test

- Using https://github.com/hacchy1983/CWL-workflows

```bash
$ git clone https://github.com/suecharo/cwltool_in_container.git
$ cd cwltool_in_container
$ docker-compose up -d --build
$ git clone https://github.com/hacchy1983/CWL-workflows
$ docker-compose exec cwltool bash
# cd CWL-workflows
# cwltool Workflows/test-workflow.cwl Jobs/small.ERR034597.test-workflow.yml
```
