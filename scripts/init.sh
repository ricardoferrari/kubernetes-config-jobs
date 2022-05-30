#!/bin/bash
echo "Creating local docker image"

docker build -t kub-app-data-example .
docker tag kub-app-data-example ricardoferrari/kub-app-data-example
# docker push ricardoferrari/kub-app-example
docker run -it --rm --name data-example ricardoferrari/kub-app-data-example

# compose="docker-compose -f docker-compose.yml "

# $compose up