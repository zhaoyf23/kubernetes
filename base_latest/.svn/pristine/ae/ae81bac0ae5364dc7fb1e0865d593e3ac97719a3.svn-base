#!/bin/bash

  for i in { 1..12 } 
  do
    /usr/bin/sleep 10
    num=`/usr/local/bin/kubectl --server=http://{{k8s_master_ip}}:{{apiserver_insecure_port}} get csr |grep Pending|wc -l`
    echo "Wait the client to issue a signing request"
    if [ $num -ge 1 ] ; then
      echo "Approve the client"
      /usr/local/bin/kubectl --server=http://{{k8s_master_ip}}:{{apiserver_insecure_port}} get csr |grep Pending|awk '{print $1}'|xargs /usr/local/bin/kubectl --server=http://{{k8s_master_ip}}:{{apiserver_insecure_port}} certificate approve
      break;    
    fi  
  done
  
  /usr/bin/sleep 15 
  /usr/local/bin/kubectl --server=http://{{k8s_master_ip}}:{{apiserver_insecure_port}} label node {{ansible_ssh_host}} zcm.role=k8s
