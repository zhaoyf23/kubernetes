FILE_HOME=/zcm/supervisor/

for OTHER_PROFILE in $(ls ${FILE_HOME}zcm-env-*.profile|grep -v local)
do
    [ -f ${OTHER_PROFILE} ] && source ${OTHER_PROFILE}
done

# load local specific params
[ -f  ${FILE_HOME}zcm-env-local.profile ] && source  ${FILE_HOME}zcm-env-local.profile
