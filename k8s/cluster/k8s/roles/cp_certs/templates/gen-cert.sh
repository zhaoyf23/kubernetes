#!/bin/bash

###################################################
# generate ca.pem and ca-key.pem                  #
###################################################
echo " --------generate ca.pem and ca-key.pem---------- "
/usr/local/bin/cfssl gencert -initca ca-csr.json | /usr/local/bin/cfssljson -bare ca

echo ""

####################################################
# generate etcd.pem and etcd-key.pem               #
####################################################
echo " --------generate etcd.pem and etcd-key.pem---------- "
/usr/local/bin/cfssl gencert -ca=ca.pem  -ca-key=ca-key.pem -config=ca-config.json  -profile=kubernetes etcd-csr.json | /usr/local/bin/cfssljson -bare etcd

echo ""

####################################################
# generate admin.pem and admin-key.pem             #
####################################################
echo " --------generate admin.pem and admin-key.pem---------- "
/usr/local/bin/cfssl gencert -ca=ca.pem  -ca-key=ca-key.pem  -config=ca-config.json  -profile=kubernetes admin-csr.json | /usr/local/bin/cfssljson -bare admin

echo ""

#####################################################
# generate kubernetes.pem and kubernetes-key.pem    #
#####################################################
echo " --------generate kubernetes.pem and kubernetes-key.pem---------- "
/usr/local/bin/cfssl gencert -ca=ca.pem -ca-key=ca-key.pem  -config=ca-config.json  -profile=kubernetes kubernetes-csr.json | /usr/local/bin/cfssljson -bare kubernetes

echo ""

#####################################################
# generate kube-proxy.pem and kube-proxy-key.pem    #
#####################################################
echo " --------generate proxy.pem and proxy-key.pem---------- "
/usr/local/bin/cfssl gencert -ca=ca.pem  -ca-key=ca-key.pem  -config=ca-config.json  -profile=kubernetes  kube-proxy-csr.json | /usr/local/bin/cfssljson -bare kube-proxy

echo ""
ls -l *.pem
echo ""
echo "Finish"


