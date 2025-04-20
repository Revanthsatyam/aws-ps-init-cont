#!/bin/bash

for i in $PARAMETERS; do
  aws_ssm_pm_1=$(echo "$i" | awk -F , '{print $1}')
  aws_ssm_pm_2=$(echo "$i" | awk -F , '{print $2}')
  export "${aws_ssm_pm_2}"=$(aws ssm get-parameter --name "${aws_ssm_pm_1}" --region us-east-1 --with-decryption --query "Parameter.Value" --output text) >>/parameters-storage/parameters
done

cat /parameters-storage/parameters

#for parameter in $PARAMETERS; do
#  ssm_parameter=$(echo $parameter | awk -F , '{print $1}')
#  app_parameter=$(echo $parameter | awk -F , '{print $2}')
#  echo export ${app_parameter}=\"$(aws ssm get-parameter  --name $ssm_parameter --with-decryption | jq .Parameter.Value | sed -e 's/"//g')\" >>/parameters-storage/parameters
#done
#
#cat /parameters-storage/parameters