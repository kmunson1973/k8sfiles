kubectl get svc --all-namespaces|grep -v "None" |grep -v "CLUSTER"| awk '{print $4 " " $2 "." $1 ".svc.cluster.local"}' >>/etc/hosts

