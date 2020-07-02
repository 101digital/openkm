#!/bin/bash
set -x
. /var/lib/jenkins/terraform/efs

kubectl create namespace wso2 $1
kubectl config set-context $(kubectl config current-context) --namespace=wso2

sed -i "s|EFS_FILE_SYSTEM_ID|$EFS_FILE_SYSTEM_ID|g" efs/configmap.yaml
sed -i "s|REGION|$REGION|g" efs/configmap.yaml

sed -i "s|EFS_DNS_NAME|$EFS_DNS_NAME|g" efs/deployment.yaml

kubectl apply -f efs/StorageClass.yaml $1
kubectl apply -f efs/configmap.yaml $1

kubectl apply -f efs/rbac.yaml $1
kubectl apply -f efs/deployment.yaml $1