
#resource
export ZCM_RESOURCE_TAG="C_20190719101435"
export ZCM_RESOURCE_PORT="8180"

#tool

#image
#export ZCM_IMAGE_TAG="C_20190719140349"
export ZCM_IMAGE_TAG="C_20190729173017"
export ZCM_IMAGE_PORT="8280"
export ZCM_HARBOR_TOOL_PORT="8080"

#application
export ZCM_ELASTICSEARCH_URL="http://10.45.61.51:52900/"
export ZCM_PINPOINT_URL="http://apm-pp.zsmart.com/"
export ZCM_OCS_TEST_URL="http://10.45.82.51:2017/ocs/"
export ZCM_OCS_LAYOUT_URL="http://10.45.82.51:2017/ocs/"
export ZCM_APPLICATION_TAG="C_20190716163054"
export ZCM_APPLICATION_PORT="8380"

#ssc
export ZCM_SSC_PORT="18280"
export ZCM_SSC_ZCIP_URL="http://10.45.4.10:9089/ZCIP/api"
export ZCM_SSC_TAG="D_20190724094834"

#service
export ZCM_GATEWAY_PORT="8780"
export ZCM_SERVICE_PORT="8680"
export ZCM_SERVICE_TAG="C_20190716163137"

#dialing
export ZCM_DIALING_TAG="D_20190723100321"
export ZCM_DIALING_PORT="52636"
#health-keeper
#export ZCM_HEALTH_KEEPER_DEBUG=true
#export ZCM_SERVER_LIST="{{zcm_portal_vip}}"
#export K8S_MASTER_VIP="{{zcm_k8s_master_vip}}"
#export NMS_MASTER_VIP="{{zcm_portal_vip}}"
#export ZCM_MASTER_VIP="{{zcm_portal_vip}}"
#export ZCM_HEALTH_KEEPER_TAG="latest"

# zcm-node-proxy

#zcm-config
export ZCM_CONFIG_PORT="8090"
export ZCM_IMAGE_PORT="8280"
export ZCM_CONFIG_TAG="C_20190929101353"
#file-manager
export ZCM_FILE_MANAGER_PORT="9112"
export ZCM_DOCKER_FILE_MANAGER_TAG="C_20190415"

#gateway
export ZCM_GATEWAY_TAG="D_20190822144216"
export ZCM_GATEWAY_PORT="8780"

#mwconsole
export ZCM_MWCONSOLE_PORT=""
export ZCM_MWCONSOLE_TAG=""

#zcm-demand
# add at 20190710181137,version: 9.0.5
export ZCM_REDIS_SERVER_LIST="10.45.80.3:6379"
export ZCM_HEALTH_KEEPER_DEBUG="true"
export ZCM_SERVER_LIST="10.45.80.26,10.45.80.27"
export K8S_MASTER_VIP="10.45.80.2"
export NMS_MASTER_VIP="10.45.80.3"
export ZCM_MASTER_VIP="10.45.80.3"
export ZCM_HEALTH_KEEPER_TAG="latest"
export ZCM_NODE_PROXY_TAG="1.15.8.1_consistent_hash"
export K8S_MASTER_URL="http://10.45.80.2:52080"
