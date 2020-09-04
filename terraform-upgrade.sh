#!/bin/bash

scp -rp * dcadmin@172.16.31.71:/home/dcadmin/terraform-vsphere-kubespray/
ssh dcadmin@172.16.31.71 'cd /home/dcadmin/terraform-vsphere-kubespray/ && terraform apply -var "action=upgrade" -auto-approve'
scp -rp dcadmin@172.16.31.71:/home/dcadmin/terraform-vsphere-kubespray/config .

kubectl --kubeconfig config/admin.conf get nodes
