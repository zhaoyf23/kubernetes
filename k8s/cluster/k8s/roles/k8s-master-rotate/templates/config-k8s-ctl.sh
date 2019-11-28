#!/bin/bash

k8s_ctrl=/etc/systemd/system/kube-controller-manager.service
if [ `grep -c RotateKubelet ${k8s_ctrl}` -eq 0 ];then
    maketime=`date +%s`
    cp ${k8s_ctrl}  ${k8s_ctrl}-$maketime.bak
    sed -i '/--v=2/i\--feature-gates=RotateKubeletClientCertificate=true,RotateKubeletServerCertificate=true \\' ${k8s_ctrl}
else
    echo 'Master RotateKubeletCertificate already updated'
fi
