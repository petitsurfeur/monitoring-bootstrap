#!/bin/sh

echo -e "Arret des containers"
docker stop grafana node_exporter blackbox_exporter prometheus alertmanager cadvisor
echo -e "Suppression des containers"
docker rm grafana node_exporter blackbox_exporter prometheus alertmanager cadvisor
echo -e "Liste des containers actifs"
docker ps -a
echo -e "Creation et lancement des containers"
docker-compose up -d

