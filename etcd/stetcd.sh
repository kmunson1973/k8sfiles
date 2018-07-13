sudo cp /vagrant/k8sfiles/etcd/etcd.conf /etc/etcd.conf 
sudo cp /vagrant/k8sfiles/etcd/etcd3.service /etc/systemd/system/etcd3.service

myip="$(ip addr show eth1 | grep 'inet ' | awk '{print $2}' | cut -f1 -d'/')" &&sudo sed -i "s/myip/$myip/g" /etc/etcd.conf

sudo systemctl daemon-reload
sudo systemctl enable etcd3
sudo systemctl start etcd3 &

