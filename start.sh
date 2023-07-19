#!/bin/bash
cd var/lib/jenkins/workspace/banan/S3/
terraform init
terraform validate
terraform apply --auto-approve
