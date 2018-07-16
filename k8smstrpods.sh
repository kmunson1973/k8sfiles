sysctl net.bridge.bridge-nf-call-iptables=1
kubectl apply -f /vagrant/k8sfiles/kube/kube-flannel.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl apply -f /vagrant/k8sfiles/px/helm-service-account.yaml
mkdir /vagrant/k8sfiles/px/helm
cd /vagrant/k8sfiles/px/helm
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.8.1-linux-amd64.tar.gz
gunzip helm-v2.8.1-linux-amd64.tar.gz
tar -xf helm-v2.8.1-linux-amd64.tar
sudo cp /vagrant/k8sfiles/px/helm/linux-amd64/helm /usr/bin
helm init --service-account helm
cd /vagrant/k8sfiles/px/
rm -rf helm
helm repo add coreos https://s3-eu-west-1.amazonaws.com/coreos-charts/stable/
helm install coreos/prometheus-operator --name prometheus-operator --namespace monitoring
helm install coreos/kube-prometheus --name kube-prometheus --set global.rbacEnable=true --namespace monitoring
