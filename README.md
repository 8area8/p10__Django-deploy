
# Pur Beurre deployment

![version](https://img.shields.io/badge/version-1.0-blue.svg?longCache=true&style=flat-square) ![version](https://img.shields.io/badge/docker_ce-18+-ligh.svg?longCache=true&style=flat-square) ![version](https://img.shields.io/badge/project-deployment-orange.svg?longCache=true&style=flat-square)

## News

- 06/01/2019 : release **1.0** done. All features are implemented.  

## Presentation

![Pur Beurre app example](https://i.imgur.com/cnvOiDb.jpg)

This project aims to deploy an online application, without the need for simplified cloud services patches.

## Specificities

- main server on AWS EC2
- database on AWS RDS
- set up with Docker and Docker-compose
- deployment of Celery and Redis as services
- use of a cron service for weekly tasks
- use of travis for continuous deployment
- use of sentry for efficient log management
- use of Gunicorn and Nginx for HTTP communication

## Getting Started

You can clone this repository to your local drive.  
This project uses a submodule that contains the application. Make sure to import the submodule by executing the code below, from the root of the project :
```bash
git submodule update --remote --merge
```

### Prerequisites

to use it, you'll need:

- docker
- an AWS account
- a Sentry account
- a Travis account

### Installing

[Install docker and docker-compose](https://www.docker.com/). Create your own database. Finally, create your ```.env``` in the root (see the part : "setting configuration").

### Local testing

Simply run :
```bash
docker-compose up
```

#### Settings configurations

```conf
# .env file

DATABASE_NAME=
DATABASE_USER=
DATABASE_PASSWORD=
DATABASE_HOST=
DATABASE_PORT=
REDIS_PORT=

PERSONAL_PASSWORD=

GOOGLE_KEY=
GOOGLE_PASS=

SENTRY_DNS=
```

## Running the tests

Thanks to Travis, tests are automatically launched with each push to your Github account. You can still run them manually from the "django_app" container, when it is running.

## Deployment

Thanks to docker, the deployment is relatively simple. The deployment is done in the same way as locally. Follow the same process locally to deploy your application.

## Authors

Mikael Briolet - Initial work - OpenClassroom  

## License

MIT license.