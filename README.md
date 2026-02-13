# Binoop's Static Website. 

## Overview

A static website hosted on AWS(S3 and Cloudfront), with infrastructure fully automated using Terraform.

You can view the website at https://d2u3yqz3i4l4kn.cloudfront.net/

List of Resources

This IAC creates below list of resources

 1 Deploys a private S3 bucket. This S3 bucket stores index.html

 2 Deploys a Cloudfront distribution to deliver content globally, enforces https and enable edge caching. 

How to build this project 

1 Configure AWS credentials locally.

2 Create Terraform backend resources for state locking (S3 and DynamoDB) and Update backend config in the code.

3 Run `terraforom init`

4 Run `terraform plan` 

5 Run `terraform apply`
