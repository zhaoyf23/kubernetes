
# common 
export ZCM_HARBOR="{{zcm_harbor_vip}}"
export ZCM_MASTER_VIP="{{zcm_portal_vip}}"
export K8S_MASTER_VIP="{{zcm_k8s_master_vip}}"

# zcm-health-keeper
export NMS_MASTER_VIP="${ZCM_MASTER_VIP}"


# zcm-node-proxy
export ZCM_NODE_PROXY_TAG="1.13.6.2"

