apt-get update
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
touch /etc/apt/sources.list.d/kubernetes.list
chmod 777 /etc/apt/sources.list.d/kubernetes.list
echo deb http://apt.kubernetes.io/ kubernetes-xenial main  > /etc/apt/sources.list.d/kubernetes.list
apt-get update
swapoff -a
apt-get -y install docker.io
systemctl start docker
systemctl enable docker
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
if [$(hostname) = "umstr01"];then
kubeadm  init --pod-network-cidr 10.96.0.0/14 --service-cidr 10.100.0.0/14 --apiserver-advertise-address 192.168.0.42
mkdir -p /home/vagrant/.kube
mkdir -p /$HOME/.kube
cp -i /etc/kubernetes/admin.conf /$HOME/.kube/config
cp -i /etc/kubernetes/admin.conf /home/vagrant/.kube/config
chmod -R 777 /home/vagrant/.kube
#kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
#kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/k8s-manifests/kube-flannel-rbac.yml
fi
