#!/bin/bash
Usage()
{
    echo ""
    echo "*********************************************************************"
    echo "*  Param error, you must sepcify the client ip to use.              *"
    echo "*  usage:$0  ip                                         *"
    echo "*********************************************************************"
    echo ""
    exit 1
}


api_server='--server=http://{{kube_master1_ip}}:{{apiserver_insecure_port}}'


Approve_cert()
{
  echo "Approve this client certificate signing request"
  
  echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  echo ""
  
  num=`/usr/local/bin/kubectl --server=http://{{kube_master1_ip}}:{{apiserver_insecure_port}} get csr |grep Pending|wc -l`
  for i in { 1..12 } 
  do
    /usr/bin/sleep 30
    num=`/usr/local/bin/kubectl --server=http://{{kube_master1_ip}}:{{apiserver_insecure_port}} get csr |grep Pending|wc -l`
    echo "Wait the client to issue a signing request"
    if [ $num -ge 1 ] ; then
      echo "Approve the client"
      /usr/local/bin/kubectl --server=http://{{kube_master1_ip}}:{{apiserver_insecure_port}} get csr |grep Pending|awk '{print $1}'|xargs /usr/local/bin/kubectl --server=http://{{kube_master1_ip}}:{{apiserver_insecure_port}} certificate approve
      break;    
    fi  
  done
}

Approve_cert

echo ""
