variable "vsphere_user" {
  description = "vSphere user name"
}

variable "vsphere_password" {
  description = "vSphere password"
}

variable "vsphere_vcenter" {
  description = "vCenter server FQDN or IP"
}

variable "vsphere_unverified_ssl" {
  description = "Is the vCenter using a self signed certificate (true/false)"
}

variable "vsphere_datacenter" {
  description = "vSphere datacenter"
}

variable "vsphere_drs_cluster" {
  description = "vSphere cluster"
  default     = ""
}

variable "vsphere_resource_pool" {
  description = "vSphere resource pool"
  default     = "kubernetes-kubespray"
}

variable "vsphere_enable_anti_affinity" {
  description = "Enable anti affinity between master VMs and between worker VMs (DRS need to be enable on the cluster)"
  default     = "false"
}

variable "vsphere_vcp_user" {
  description = "vSphere user name for the Kubernetes vSphere Cloud Provider plugin"
}

variable "vsphere_vcp_password" {
  description = "vSphere password for the Kubernetes vSphere Cloud Provider plugin"
}

variable "vsphere_vcp_datastore" {
  description = "vSphere default datastore for the Kubernetes vSphere Cloud Provider plugin"
}

variable "action" {
  description = "Which action have to be done on the cluster (create, add_worker, remove_worker, or upgrade)"
  default     = "create"
}

variable "worker" {
  type        = list(string)
  description = "List of worker IPs to remove"

  default = [""]
}

variable "vm_user" {
  description = "SSH user for the vSphere virtual machines"
}

variable "vm_password" {
  description = "SSH password for the vSphere virtual machines"
}

variable "vm_privilege_password" {
  description = "Sudo or su password for the vSphere virtual machines"
}

variable "vm_distro" {
  description = "Linux distribution of the vSphere virtual machines (ubuntu/centos/debian/rhel)"
}

variable "vm_datastore" {
  description = "Datastore used for the vSphere virtual machines"
}

variable "vm_network" {
  description = "Network used for the vSphere virtual machines"
}

variable "vm_template" {
  description = "Template used to create the vSphere virtual machines (linked clone)"
}

variable "vm_folder" {
  description = "vSphere Virtual machines folder"
  default     = "kubernetes-kubespray"
}

variable "vm_linked_clone" {
  description = "Use linked clone to create the vSphere virtual machines from the template (true/false). If you would like to use the linked clone feature, your template need to have one and only one snapshot"
  default     = "false"
}

variable "k8s_kubespray_url" {
  description = "Kubespray git repository"
  default     = "https://github.com/kubernetes-incubator/kubespray.git"
}

variable "k8s_kubespray_version" {
  description = "Kubespray version"
  default     = "v2.13.3"
}

variable "k8s_version" {
  description = "Version of Kubernetes that will be deployed"
  default     = "v1.16.11"
}

variable "vm_master_ips" {
  type        = map(string)
  description = "IPs used for the Kubernetes master nodes"
}

variable "vm_worker_ips" {
  type        = map(string)
  description = "IPs used for the Kubernetes worker nodes"
}

variable "vm_master_haproxy_vip" {
  description = "IP used for the master HAProxy floating VIP"
}

variable "vm_master_haproxy_ips" {
  type        = map(string)
  description = "IP used for two master HAProxy virtual machine"
}

variable "vm_master_haproxy_net_interface" {
  description = "Network interface name for master HAProxy virtual machine"
}

variable "vm_master_haproxy_cpu" {
  description = "Number of vCPU for the master HAProxy virtual machine"
  default     = "1"
}

variable "vm_master_haproxy_ram" {
  description = "Amount of RAM for the master HAProxy virtual machine (example: 1024)"
  default     = "1024"
}

variable "vm_worker_haproxy_vip" {
  description = "IP used for the worker HAProxy floating VIP"
}

variable "vm_worker_haproxy_ips" {
  type        = map(string)
  description = "IP used for two worker HAProxy virtual machine"
}

variable "vm_worker_haproxy_net_interface" {
  description = "Network interface name for worker HAProxy virtual machine"
}

variable "vm_worker_haproxy_cpu" {
  description = "Number of vCPU for the worker HAProxy virtual machine"
  default     = "1"
}

variable "vm_worker_haproxy_ram" {
  description = "Amount of RAM for the worker HAProxy virtual machine (example: 1024)"
  default     = "1024"
}

variable "vm_netmask" {
  description = "Netmask used for the Kubernetes nodes and HAProxy (example: 24)"
}

variable "vm_gateway" {
  description = "Gateway for the Kubernetes nodes"
}

variable "vm_dns" {
  description = "DNS for the Kubernetes nodes"
}

variable "vm_domain" {
  description = "Domain for the Kubernetes nodes"
}

variable "k8s_network_plugin" {
  description = "Kubernetes network plugin (calico/canal/flannel/weave/cilium/contiv/kube-router)"
  default     = "calico"
}

variable "k8s_weave_encryption_password" {
  description = "Weave network encyption password "
  default     = ""
}

variable "k8s_dns_mode" {
  description = "Which DNS to use for the internal Kubernetes cluster name resolution (example: kubedns, coredns, etc.)"
  default     = "coredns"
}

variable "vm_master_cpu" {
  description = "Number of vCPU for the Kubernetes master virtual machines"
  default     = "2"
}

variable "vm_master_ram" {
  description = "Amount of RAM for the Kubernetes master virtual machines (example: 2048)"
  default     = "2048"
}

variable "vm_worker_cpu" {
  description = "Number of vCPU for the Kubernetes worker virtual machines"
  default     = "2"
}

variable "vm_worker_ram" {
  description = "Amount of RAM for the Kubernetes worker virtual machines (example: 2048)"
  default     = "4096"
}

variable "vm_name_prefix" {
  description = "Prefix for the name of the virtual machines and the hostname of the Kubernetes nodes"
  default     = "k8s"
}
