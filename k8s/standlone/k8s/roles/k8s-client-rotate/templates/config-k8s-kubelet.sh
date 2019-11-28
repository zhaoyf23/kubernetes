#!/bin/bash

k8s_client=/etc/systemd/system/kubelet.service
if [ `grep -c RotateKubelet ${k8s_client}` -eq 0 ];then
    maketime=`date +%s`
    cp ${k8s_client}  ${k8s_client}-$maketime.bak
    sed -i '/--v=2/i\--feature-gates=RotateKubeletClientCertificate=true,RotateKubeletServerCertificate=true \\' ${k8s_client}
    sed -i '/--v=2/i\--rotate-certificates=true \\' ${k8s_client}
else
    echo 'Node RotateKubeletCertificate already updated'
fi
