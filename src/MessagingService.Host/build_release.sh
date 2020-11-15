 #!/bin/bash
docker stop messaging-service-container;
docker rm messaging-service-container;
docker image rm messaging-service-image;
docker build -t messaging-service-image -f Dockerfile.Release .;
docker create --name messaging-service-container messaging-service-image;
docker start messaging-service-container;
docker attach --sig-proxy=false messaging-service-container;