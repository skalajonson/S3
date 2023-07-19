#!/bin/bash
cd home/kaka/S3/
terraform init
terraform validate
terraform apply --auto-approve
