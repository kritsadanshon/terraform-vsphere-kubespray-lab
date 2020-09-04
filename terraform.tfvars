vsphere_vcenter = "172.16.31.31"
vsphere_user = "Administrator@vsphere.local"
vsphere_password = "P@ssw0rd"
vsphere_unverified_ssl = "true"
vsphere_datacenter = "POC-Datacenter"
vsphere_drs_cluster = "POC-Cluster"
vsphere_resource_pool = "kubernetes-kubespray"
vsphere_enable_anti_affinity = "false"
vsphere_vcp_user = "Administrator@vsphere.local"
vsphere_vcp_password = "P@ssw0rd"
vsphere_vcp_datastore = "ds-poc-esx3-ssd-01"

vm_user = "dcadmin"
vm_password = "P@ssw0rd1!"
vm_privilege_password = ""
vm_distro = "ubuntu"
vm_name_prefix = "k8s"
vm_folder = "kubernetes-kubespray"
vm_datastore = "ds-poc-esx3-ssd-01"
vm_network = "vLAN301"
vm_netmask = "24"
vm_gateway = "172.16.31.254"
vm_dns = "172.16.31.130"
vm_domain = "numgun.com"
vm_template = "k8s-ubuntu-template"
vm_linked_clone = "false"

vm_master_haproxy_cpu = "1"
vm_master_haproxy_ram = "1024"
vm_master_haproxy_net_interface = "ens160"
vm_master_haproxy_vip = "172.16.31.72"
vm_master_haproxy_ips = {
  "0" = "172.16.31.73"
  "1" = "172.16.31.74"
}

vm_master_cpu = "2"
vm_master_ram = "2048"
vm_master_ips = {
  "0" = "172.16.31.75"
  "1" = "172.16.31.76"
  "2" = "172.16.31.77"
}

vm_worker_haproxy_cpu = "1"
vm_worker_haproxy_ram = "1024"
vm_worker_haproxy_net_interface = "ens160"
vm_worker_haproxy_vip = "172.16.31.78"
vm_worker_haproxy_ips = {
  "0" = "172.16.31.79"
  "1" = "172.16.31.80"
}

vm_worker_cpu = "2"
vm_worker_ram = "4096"
vm_worker_ips = {
  "0" = "172.16.31.81"
  "1" = "172.16.31.82"
  "2" = "172.16.31.83"
}

k8s_kubespray_url = "https://github.com/kubernetes-sigs/kubespray.git"
k8s_kubespray_version = "v2.13.3"
k8s_version = "v1.17.9"
k8s_network_plugin = "calico"
k8s_weave_encryption_password = ""
k8s_dns_mode = "coredns"
