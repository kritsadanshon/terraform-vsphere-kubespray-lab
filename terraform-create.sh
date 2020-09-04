#!/bin/bash

ssh dcadmin@172.16.31.71 'cd /home/dcadmin/terraform-vsphere-kubespray/ && terraform destroy -auto-approve'
ssh dcadmin@172.16.31.71 'rm -rf /home/dcadmin/terraform-vsphere-kubespray/'
ssh dcadmin@172.16.31.71 'mkdir -p /home/dcadmin/terraform-vsphere-kubespray/'
scp -rp * dcadmin@172.16.31.71:/home/dcadmin/terraform-vsphere-kubespray/
ssh dcadmin@172.16.31.71 'cd /home/dcadmin/terraform-vsphere-kubespray/ && terraform init && terraform plan && terraform apply -auto-approve'
scp -rp dcadmin@172.16.31.71:/home/dcadmin/terraform-vsphere-kubespray/config .
rm /Users/kritsadanshon.s/.kube/config
cp config/admin.conf /Users/kritsadanshon.s/.kube/config

kubectl --kubeconfig config/admin.conf get nodes
