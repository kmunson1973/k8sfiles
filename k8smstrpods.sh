#kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
#kubectl apply -f /vagrant/k8sfiles/calico/calico.yaml
sysctl net.bridge.bridge-nf-call-iptables=1
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.yml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

#kubectl apply -f /vagrant/k8sfiles/test/nginx/install/common//ns-and-sa.yaml -f /vagrant/k8sfiles/test/nginx/install/common/nginx-config.yaml -f /vagrant/k8sfiles/test/nginx/install/common/default-server-secret.yaml
#kubectl apply -f /vagrant/k8sfiles/test/nginx/install/rbac/rbac.yaml
#kubectl apply -f /vagrant/k8sfiles/test/nginx/install/daemon-set/nginx-ingress.yaml
