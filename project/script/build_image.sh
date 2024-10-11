#!/bin/sh

sudo docker build -f caddy.dockerfile -t david0800/micro-caddy:1.0.0 .
docker push david0800/micro-caddy:1.0.0

cd ../front-end
sudo docker build -f front-end.dockerfile -t david0800/front-end:1.0.2 .
docker push david0800/front-end:1.0.2

cd ../logger-service
sudo docker build -f logger-service.dockerfile -t david0800/logger-service:1.0.2 .
docker push david0800/logger-service:1.0.2


cd ../authentication-service
sudo docker build -f authentication-service.dockerfile -t david0800/authentication-service:1.0.0 .
docker push david0800/authentication-service:1.0.0


cd ../broker-service
sudo docker build -f broker-service.dockerfile -t david0800/broker-service:1.0.1 .
docker push david0800/broker-service:1.0.1


cd ../listener-service
sudo docker build -f listener-service.dockerfile -t david0800/listener-service:1.0.0 .
docker push david0800/listener-service:1.0.0


cd ../mail-service
sudo docker build -f mail-service.dockerfile -t david0800/mail-service:1.0.0 .
docker push david0800/mail-service:1.0.0


