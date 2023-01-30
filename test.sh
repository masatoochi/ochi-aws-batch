#!/bin/bash
if [ -n "$(aws s3 ls s3://${S3_BUCKET}/${S3_SCRIPT_OBJECT})" ];then bash -c "$(aws s3 cp s3://${S3_BUCKET}/${S3_SCRIPT_OBJECT} -)";else echo "Script is failed"&&exit 1;fi
