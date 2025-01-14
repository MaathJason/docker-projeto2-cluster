#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
docker service create --name redis --replicas=5 redis:7.4.1