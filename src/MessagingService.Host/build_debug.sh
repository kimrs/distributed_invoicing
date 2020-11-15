 #!/bin/bash

docker stop messaging-service-container-debug;
docker rm messaging-service-container-debug;
docker image rm messaging-service-image-debug;
docker build -t messaging-service-image-debug -f Dockerfile .;
docker create --name messaging-service-container-debug -p 8080:80 messaging-service-image-debug;
docker start messaging-service-container-debug;
docker attach --sig-proxy=false messaging-service-container-debug;