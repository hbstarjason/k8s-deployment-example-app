#!/bin/bash

echo 'Docker Login - BEGIN'
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
echo 'Docker Login - END'

echo 'Docker Push - BEGIN'
docker push hbstarjason/k8s-deployment-example-app:$TRAVIS_TAG
echo 'Docker Push - END'
