#!/bin/bash
echo "fs.may_detach_mounts=1" | tee -a /etc/sysctl.d/90-zcm.conf 
echo "fs.inotify.max_user_watches=1048576" | tee -a /etc/sysctl.d/90-zcm.conf 
echo "kernel.core_pattern=/tmp/zcore/core.%h~%e" | tee -a /etc/sysctl.d/90zcm.conf 
sysctl -f /etc/sysctl.d/90-zcm.conf 
