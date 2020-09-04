=================================================================================================
Terraform       Ansible       Kubespray       K8S             Remark
=================================================================================================
v0.12.28        v2.9.10       v2.13.3         v1.17.9         ** no issue **

v0.12.28        v2.9.10       v2.12.7         v1.16.11        ** no issue **

v0.12.28        v2.9.10       v2.11.0         v1.15.3         ** issue **
                                                              - /ansible/kubespray/roles/kubernetes/master/tasks/kubeadm-setup.yml
                                                              match('.*--certificate-key .*') <<< "remove space"
                                                              - error on add worker node

ref: https://github.com/kubernetes-sigs/kubespray/releases

ref: https://blog.inkubate.io/create-a-ubuntu-18-04-terraform-template-for-vmware-vsphere/

ref: https://blog.inkubate.io/install-and-manage-automatically-a-kubernetes-cluster-on-vmware-vsphere-with-terraform-and-kubespray/

ref: https://medium.com/@mayamirror1991/%E0%B8%95%E0%B8%AD%E0%B8%99%E0%B8%97%E0%B8%B5%E0%B9%88-1-%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87-kubernetes-cluster-on-baremetal-by-k8spray-%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%96%E0%B8%AD%E0%B8%B0-401c2fce490

ref: https://medium.com/@nontster/%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87-kubernetes-cluster-%E0%B8%94%E0%B9%89%E0%B8%A7%E0%B8%A2-kubespray-e678bb9d7fad

ref: https://medium.com/@poongprui/deploy-k8s-%E0%B9%81%E0%B8%9A%E0%B8%9A%E0%B8%82%E0%B8%B5%E0%B9%89%E0%B9%80%E0%B8%81%E0%B8%B5%E0%B8%A2%E0%B8%88%E0%B8%88%E0%B8%88-%E0%B8%94%E0%B9%89%E0%B8%A7%E0%B8%A2-kubespray-b86eb5b58f01

ref: https://web.thaigqsoft.com/kaartidtang-k8s-phaan-kubespray/


kubectl --kubeconfig config/admin.conf apply -f dashboard/

kubectl --kubeconfig config/admin.conf -n kube-system describe secret $(kubectl --kubeconfig config/admin.conf -n kube-system get secret | grep admin-user | awk '{print $1}')

kubectl --kubeconfig config/admin.conf proxy --address='0.0.0.0'
