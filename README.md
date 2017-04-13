# docker-fahclient
FAH client for docker

## Prerequisites
1) Have docker-engine installed : https://docs.docker.com/engine/installation/
2) Host OS must be linux based

## Manual build
Run the script build.sh

## Image pulling
You can retrieve the latest built image with the command:
```
docker pull arnaudhb/docker-fahclient
```

## Launch
1) Edit the script run.sh and set the variables relative to FAH client configuration (Passkey, team, user...)
2) Run the script run.sh

The docker container will be created in detached mode with persistence accross OS restarts.

## Monitoring
If you want to check progress, the container exposes 2 ports:
- 36330 for FAHControl
- 7396 for FAH Web control

When running the container with the run.sh script, these 2 ports are mapped to ports 36331 and 7397, in order to avoid any conflict with local installation.

## FAH configuration tuning
The default add/config.xml FAHclient configuration file is given as is.
Feel free to tune the configuration by building your own docker images and containers.

Happy sharing !
