#!/bin/bash

ssh dcadmin@172.16.31.71 'cd /home/dcadmin/terraform-vsphere-kubespray/ && terraform destroy -auto-approve'
