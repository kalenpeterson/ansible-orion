#!/bin/bash

# Build Image
docker build -t docker.io/kalenpeterson/awx-ee:orion-latest -f Dockerfile ../ || exit 1

# Run Pod
docker run -it -v /home/dgx/ansible-orion:/mnt docker.io/kalenpeterson/awx-ee:orion-latest bash
#    ansible-playbook -i /mnt/tests/inventory /mnt/tests/GetIpAddress.yml