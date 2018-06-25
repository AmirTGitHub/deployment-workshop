#!/bin/bash

HOST="34.243.242.180"
EC2_USER="ec2-user"
# # KEY_FILE="~/.ssh/"
# CONTAINER="amircontainer"
# KEY_FILE="/home/ubuntu/.ssh/id_34.243.242.180"

# chmod 700 ~/.ssh
# # echo "$PKEY" >> $KEY_FILE
# chmod 600 $KEY_FILE


# ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null 
ssh -o StrictHostKeyChecking=no $HOST -l $EC2_USER -i  "sudo docker pull $DOCKER_USER/deploymentamir:$VERSION && sudo docker stop $CONTAINER && sudo docker rm $CONTAINER && sudo docker run --name $CONTAINER $DOCKER_USER/deploymentamir:$VERSION"