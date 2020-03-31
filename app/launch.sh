#!/bin/bash

pwd=$(pwd)

echo "============================================"
echo "            Welcome EASYDOCKER              "
echo "============================================"

echo "============================================"
echo "STEP - [1/3]: Microservices initializing..."
echo "============================================"
cd DockerController && sudo docker-compose up -d --build

cd $pwd
echo "============================================"
echo "STEP - [2/3]: Building Spring Application..."
echo "============================================"
cd EasyDocker && mvn install

cd $pwd
echo "============================================"
echo "STEP - [3/3]: Starting Spring Application..."
echo "============================================"
cd EasyDocker && mvn spring-boot:run

echo "=============================================="
echo "DONE - Open browser in https://localhost:8080/"
echo "=============================================="
cd $pwd
