ETCD_VER=v3.3.8 && curl -L https://storage.googleapis.com/etcd/${ETCD_VER}/etcd-${ETCD_VER}-linux-amd64.tar.gz -o /tmp/etcd.tar.gz
rm -rf /tmp/etcd && mkdir -p /tmp/etcd
tar xzvf /tmp/etcd.tar.gz -C /tmp/etcd --strip-components=1
sudo cp /tmp/etcd/etcd /usr/local/bin/
sudo cp /tmp/etcd/etcdctl /usr/local/bin/
