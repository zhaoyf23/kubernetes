#!/bin/bash

###################################################
# create kubectl config                               #
###################################################
echo " --------create kubectl config  ---------- "

# config kubernetes cluster
/usr/local/bin/kubectl config set-cluster kubernetes \
  --certificate-authority=/etc/kubernetes/ssl/ca.pem \
  --embed-certs=true \
  --server=https://{{ansible_ssh_host}}:6443

# config clients
/usr/local/bin/kubectl config set-credentials admin \
  --client-certificate=/etc/kubernetes/ssl/admin.pem \
  --embed-certs=true \
  --client-key=/etc/kubernetes/ssl/admin-key.pem

# admin set-context
/usr/local/bin/kubectl config set-context kubernetes \
  --cluster=kubernetes \
  --user=admin

# admin set default context
/usr/local/bin/kubectl config use-context kubernetes

echo ""




echo ""

echo ""
echo "Finish"
