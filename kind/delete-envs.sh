#!/bin/zsh

echo '⛔  Deleting Kubernetes cluster k8s-c1\n'
kind delete cluster --name k8s-c1
