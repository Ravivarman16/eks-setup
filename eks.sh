#!/bin/bash

#installing kubectl:
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl

chmod +x ./kubectl
mv ./kubectl /usr/local/bin 
kubectl version --short --client


#installing eks-ctl:
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

#create an IAM User:
#IAM
#EC2
#VPC
#CloudFormation
#full access:

#to create an EKS Cluster:
eksctl create cluster --name guvi \
   --region ap-south-1 \
--node-type t2.small \
--nodes-min 2 \
--nodes-max 3 \ 

#to delete the cluster:
eksctl delete cluster guvi --region ap-south-1


