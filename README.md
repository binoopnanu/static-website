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

- Create Terraform backend resources for state locking (S3 and DynamoDB) and Update backend configs in the code.

- Run `terraforom init`

- Run `terraform plan` 

- Run `terraform apply`

## Future Enhancements 

- **Setup Custom Domain and TLS** 
   - Provision a Domian in Route53
   - Create a certificate in ACM. 
   - Add records in Route53 and point to Cloudfornt.

- **Build a CICD pipeline with approval stages**
   - Setup a proper CICD Pipeline with a linting. You can use any tool for this.
   - Pull request runs a terraform plan against a dev environemt.
   - PR merges run a terraform apply against the dev environment. 
   - Approval and release for the higher environments.

- **Cloudfront security hardening and enforce WAF**
   - Configure CDN security headers
   - Deploy WAF for enhanced protection

- **Provision multiple environments such as dev, stg, prod etc.** 
   - Provision multiple environments using terraform. 
   - Move variables to tfvars for each env.
   - Setup proper isolation between environments.

- **Monitoring and Logging setup.**
   - Setup access logs for cloudfornt.
   - Leverage cloudwatch logs for logging 
   - Setup cloudwatch dashboards for latency and errors.
  

## Alternative Solutions 
  
- **S3 inbuilt website hosting**
   - This is an old school way of hosting your website. This also requires less secure ACL's. 

- **EC2 with a load balancer**
   - Using ec2 for this small website is an overkill and expensive. 

- **ECS/EKS** 
   - Same as EC2, container enviroments are an over kill here


## Production Grade Improvements 

- **Multiple Environments and AWS accounts**
   - Leverage AWS best practices for multiple environemts such as IAM boundaries, SCP's, Naming conventions. 
   - Architecture with AWS Landing Zone and Hub-Spoke networking, leverage transit gateway and shared vpc concepts for communication.
   
- **IAC**
   - Modularise all the complex moving parts using terraform/opentofu.
   - Start using different repos for modules and start consuming them. 

- **Release strategy**
   - Start deploying versioned artifacts to target environment. 
   - Rollback should be straight forward.
   - Need to use a gated apply for Prod. 

- **Security**
   - All the resources remain private except CDN/Edge.
   - Strict IAM restrictions for CI and CD
   - Introudice Shield. 
   - Enforce restriction using geo-blocking. 
   - Shift left security


