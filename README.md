# Spa Project

Basic set up for serving a SPA front end and a node back end with NGINX DOCKER and Docker Compose

## Commands

To start everything just run:
```bash
docker-compose -f ./docker-compose.dev.yml up -d
```
'You can renam the docker compose file to anything you want'
To tear down everything:

```bash
docker-compose -f ./docker-compose.dev.yml down
```
- The nginx image uses volumes for the configuration, cache and log files. They are located in the nginx/ folder.
- The baack end image receive a .env file wich provides the env variables. (You should not add sensitive info in it)
- The static files are served from the dist/ folder