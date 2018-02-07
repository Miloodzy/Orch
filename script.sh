#/!bin/bash

temp=$(cat /sys/class/thermal/thermal_zone0/temp)
tmp=$(($temp / 1000))
equiId=$1
remark=$2


curl \
--header "Content-type: application/json" \
--request POST \
--data '{"username":"WEBS","password":"WEBS","environment":"JDV920","role":"*ALL","inputs" : [ {"name" : "equipmentId","value" : "'"$equiId"'"}, {"name" : "remark","value" : "'"$remark"'"}, {"name" : "tstTmp","value" :"'"$tmp"'"} ]}}' \
http://52.58.233.132:20221/jderest/v2/orchestrator/ORCH_TemperatureMeasure_TEST

