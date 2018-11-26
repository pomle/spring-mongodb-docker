# Mongo DB backed Rest API

## Setup

This project requires Docker. Docker CE is recommended.
See [Install Instruction](https://docs.docker.com/install/) and install for your platform.


### Start

* Run `docker-compose up -d` from project root.

* Application will listen at `localhost:8080`.


## Usage

Insert a Person.

```bash
curl -H "Content-Type:application/json" \
    -d '{"firstName": "Pontus", "lastName": "Persson"}' \
    http://localhost:8080/people
```

Query for Person.

```bash
curl 'http://localhost:8080/people/search/findByFirstName?name=Pontus'
```

```bash
curl 'http://localhost:8080/people/search/findByLastName?name=Persson'
```


### Obtaining JAR

JAR file is written to `/app/target/rest-api-0.1.0.jar` in image.

Instructions for how to copy JAR file from Docker can be found below.

https://stackoverflow.com/questions/22049212/copying-files-from-docker-container-to-host
