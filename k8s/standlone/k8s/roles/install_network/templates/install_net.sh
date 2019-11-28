#!/bin/bash
success='yes'
serverinfo=http://{{kube_master1_ip}}:{{apiserver_insecure_port}}
for i in {1..1000}
do
  sleep 10
  success='no'
  /usr/local/bin/kubectl --server=$serverinfo get nodes  
  ret=$?
  if [ $ret = "0" ] 
  then 
    /usr/local/bin/kubectl --server=$serverinfo apply -f /etc/kubernetes/rbac.yaml
    /usr/local/bin/kubectl --server=$serverinfo apply -f /etc/kubernetes/calico.yaml
    success='yes'
    break
  else 
    echo "Try again later ... Give $i chance(s)"  
  fi     
done

if [ "$success" = 'yes' ]
then
  echo "congratulations ! "
  exit 0
else
  exit -1
fi
