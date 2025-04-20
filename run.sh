#!/bin/bash

for i in $PARAMETERS; do
  aws_ssm_pm_1=$(echo "$i" | awk -F , '{print $1}')
  aws_ssm_pm_2=$(echo "$i" | awk -F , '{print $2}')
  echo export ${aws_ssm_pm_2}=$(aws ssm get-parameter --name "${aws_ssm_pm_1}" --region us-east-1 --with-decryption --query "Parameter.Value" --output text) >>/component/parameters
done