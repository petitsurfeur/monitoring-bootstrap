#!/bin/sh

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

echo -e "${GREEN}### Arret des containers${NOCOLOR}"
docker stop grafana node_exporter blackbox_exporter prometheus alertmanager cadvisor

echo ""
echo -e "${GREEN}### Suppression des containers${NOCOLOR}"
docker rm grafana node_exporter blackbox_exporter prometheus alertmanager cadvisor

echo ""
echo -e "${GREEN}### Creation et lancement des containers${NOCOLOR}"
docker-compose up -d

echo ""
echo -e "${GREEN}### Liste des containers actifs${NOCOLOR}"
docker ps -a


