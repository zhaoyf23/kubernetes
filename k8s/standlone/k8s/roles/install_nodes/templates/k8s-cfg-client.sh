#!/bin/bash

###################################################
# create kubelet and kube-proxy config                               #
###################################################
echo " --------create kubelet config  ---------- "

# kubelet bootstrap.kubeconfig
/usr/local/bin/kubectl config set-cluster kubernetes \
  --certificate-authority=/etc/kubernetes/ssl/ca.pem \
  --embed-certs=true \
  --server=https://{{kube_master1_ip}}:6443 \
  --kubeconfig=bootstrap.kubeconfig
echo ""
  
# config kubelet credentials
/usr/local/bin/kubectl config set-credentials kubelet-bootstrap \
  --token=46b24c25ce1202090ff59a4d3a2f0c55  \
  --kubeconfig=bootstrap.kubeconfig
echo ""
  
# bind
/usr/local/bin/kubectl config set-context default \
  --cluster=kubernetes \
  --user=kubelet-bootstrap \
  --kubeconfig=bootstrap.kubeconfig

# config default bind
/usr/local/bin/kubectl config use-context default --kubeconfig=bootstrap.kubeconfig
mv bootstrap.kubeconfig /etc/kubernetes/
echo ""

############################################

echo " --------create kubelet config  ---------- "

# kubelet kube-proxy.kubeconfig
/usr/local/bin/kubectl config set-cluster kubernetes \
  --certificate-authority=/etc/kubernetes/ssl/ca.pem \
  --embed-certs=true \
  --server=https://{{kube_master1_ip}}:6443 \
  --kubeconfig=kube-proxy.kubeconfig
echo ""

# config kube-proxy credentials
/usr/local/bin/kubectl config set-credentials kube-proxy \
  --client-certificate=/etc/kubernetes/ssl/kube-proxy.pem \
  --client-key=/etc/kubernetes/ssl/kube-proxy-key.pem \
  --embed-certs=true \
  --kubeconfig=kube-proxy.kubeconfig  
echo ""

# config bind
/usr/local/bin/kubectl config set-context default \
  --cluster=kubernetes \
  --user=kube-proxy \
  --kubeconfig=kube-proxy.kubeconfig

# config default bind  
/usr/local/bin/kubectl config use-context default --kubeconfig=kube-proxy.kubeconfig  
mv kube-proxy.kubeconfig /etc/kubernetes/  
  
echo ""

echo ""
echo "Finish"
