# LAB - Terrafrom, Kubespray, Ansible for VMware

```
=================================================================================================
Terraform       Ansible       Kubespray       K8S             Remark
=================================================================================================
v0.12.28        v2.9.10       v2.13.3         v1.17.9         ** no issue **

v0.12.28        v2.9.10       v2.12.7         v1.16.11        ** no issue **

v0.12.28        v2.9.10       v2.11.0         v1.15.3         ** issue **
                                                              - /ansible/kubespray/roles/kubernetes/master/tasks/kubeadm-setup.yml
                                                              match('.*--certificate-key .*') <<< "remove space"
                                                              - error on add worker node
```
