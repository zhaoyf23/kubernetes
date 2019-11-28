#!/bin/bash

  for i in { 1..12 } 
  do
    /usr/bin/sleep 10
    num=`/usr/local/bin/kubectl --server=http://10.45.80.23:8080 get csr |grep Pending|wc -l`
    echo "Wait the client to issue a signing request"
    if [ $num -ge 1 ] ; then
      echo "Approve the client"
      /usr/local/bin/kubectl --server=http://10.45.80.23:8080 get csr |grep Pending|awk '{print $1}'|xargs /usr/local/bin/kubectl --server=http://10.45.80.23:8080 certificate approve
      break;    
    fi  
  done
   /usr/local/bin/kubectl --server=http://10.45.80.23:8080 get csr |grep {{ansible_ssh_host}}|awk '{print $1}'|xargs /usr/local/bin/kubectl --server=http://10.45.80.23:8080 certificate approve 
  /usr/bin/sleep 20 
  /usr/local/bin/kubectl --server=http://10.45.80.23:8080 label node {{ansible_ssh_host}} zcm.role=k8s
