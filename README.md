# docker-fahclient
FAH client for docker

## Prerequisites
1) Have docker-engine installed : https://docs.docker.com/engine/installation/
2) Have docker-compose installed : https://docs.docker.com/compose/install/
2) Host OS must be a linux based distro.

## Manual build
```
docker-compose build
```

## Image pulling
You can retrieve the latest built image with the command:
```
docker-compose pull
```

## Launch
1) Edit the file .env and set the variables relative to FAH client configuration (Passkey, team, user...)
2) Start the compose service

```
docker-compose up -d
```

The docker container will be created in detached mode with persistence accross OS restarts.

## Monitoring
If you want to check progress, the container exposes 2 ports:
- 36330 for FAHControl
- 7396 for FAH Web control


## FAH configuration tuning
The default add/config.xml FAHclient configuration file is given as is.

Feel free to tune the configuration by building your own docker images.

Any pull request is welcome.  (we also share code :) )

Happy sharing !
