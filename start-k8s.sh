openssl genrsa -out /tmp/serviceaccount.key 2048
for SERVICES in etcd kube-apiserver kube-controller-manager kube-scheduler kube-proxy kubelet docker; do
	systemctl restart $SERVICES
	systemctl enable $SERVICES
done
