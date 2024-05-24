#!/bin/bash

minikube addons enable ingress

kubectl create deployment my-nginx --image=nginx

kubectl proxy --address='0.0.0.0' --accept-hosts='^*$'