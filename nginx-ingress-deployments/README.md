# Installation

This folder includes Kubernetes manifests for installing NGINX or NGINX Plus Ingress controller. Read the installation instructions [here](https://docs.nginx.com/nginx-ingress-controller/installation/).


kubectl --kubeconfig config/admin.conf apply -f nginx-ingress-deployments/common/ns-and-sa.yaml
kubectl --kubeconfig config/admin.conf apply -f nginx-ingress-deployments/rbac/rbac.yaml

kubectl --kubeconfig config/admin.conf apply -f nginx-ingress-deployments/common/default-server-secret.yaml
kubectl --kubeconfig config/admin.conf apply -f nginx-ingress-deployments/common/nginx-config.yaml

kubectl --kubeconfig config/admin.conf apply -f nginx-ingress-deployments/daemon-set/nginx-ingress.yaml

kubectl --kubeconfig config/admin.conf apply -f nginx-ingress-deployments/demo

kubectl --kubeconfig config/admin.conf get ingress
kubectl --kubeconfig config/admin.conf describe ingress
kubectl --kubeconfig config/admin.conf get pods --namespace=nginx-ingress

kubectl --kubeconfig config/admin.conf apply -f nginx-ingress-deployments/demo/ingress-resource-1.yaml
