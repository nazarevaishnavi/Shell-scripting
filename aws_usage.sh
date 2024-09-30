#! /bin/bash

#######################
# Script to report the usage of AWS resources in your project 
#######################

#Listing the S3 buckets
echo "List of S3 buckets"

aws s3 ls

#Listing ec2 instances
echo "Ec2 instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List lambda functions
echo "List Lambda functions"

aws lambda list-functions

#List IAM users
echo "List users"

aws iam list-users