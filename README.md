# Binoop's Static Website. 

## Overview

A static website hosted on AWS(S3 and Cloudfront), with infrastructure fully automated using Terraform.

You can view the website at https://d2u3yqz3i4l4kn.cloudfront.net/

## List of Resources

This IAC creates below list of resources

 - Deploys a private S3 bucket and stores index.html

 - Deploys a Cloudfront distribution to deliver content globally, enforces https and enable edge caching. 


## How to build this project 

- Configure AWS credentials locally.

- Create Terraform backend resources for state locking (S3 and DynamoDB) and Update backend config in the code.

- Run `terraforom init`

- Run `terraform plan` 

- Run `terraform apply`
