#!/bin/bash

HOST="34.243.242.180"
EC2_USER="ec2-user"
PORT="2525"
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $HOST -l $EC2_USER "sudo docker stop $CONTAINER; sudo docker rm $CONTAINER; sudo docker create -p $PORT:$PORT --name $CONTAINER $DOCKER_USER/$CONTAINER:$VERSION && sudo docker start $CONTAINER"
# ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $HOST -l $EC2_USER -i  "sudo docker pull $DOCKER_USER/deploymentamir:$VERSION && sudo docker stop $CONTAINER && sudo docker rm $CONTAINER && sudo docker run --name $CONTAINER $DOCKER_USER/deploymentamir:$VERSION"