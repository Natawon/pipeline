#!/bin/bash

# echo "Hello World"

ansible-playbook -i ./hosts main.yaml --extra-vars "domain=test.froggenius.com project=test http_port=8001 https_port=9001" -vv
