export K8S_MASTER_URL=http://172.16.24.51:8080
root@172.16.25.119[/zcm/supervisor]#cat zcm-env.profile
FILE_HOME=/zcm/supervisor/
# load local specific params
#source ${FILE_HOME}zcm-env-local.profile

for OTHER_PROFILE in $(ls ${FILE_HOME}zcm-env-*.profile|grep -v local)
do
    [ -f ${OTHER_PROFILE} ] && source ${OTHER_PROFILE}
done
