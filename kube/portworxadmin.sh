kubectl create -f /vagrant/k8sfiles/kube/serviceacct.yaml
kubectl create clusterrolebinding portworx-admin --clusterrole=cluster-admin --user="system:serviceaccount:default:portworx-admin"

