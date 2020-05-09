# Terraform module to provision an AWS ElastiCache Cluster

## Prerequisites
Provision an S3 bucket to store Terraform State and DynamoDB for state-lock
using https://github.com/jrdalino/aws-tfstate-backend-terraform

## Usage
- Replace variables in terraform.tfvars
- Replace variables in state_config.tf
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## (In Progress) Module Usage
Include this repository as a module in your existing terraform code:
```
module "elasticache" {
  source = "git::https://github.com/jrdalino/aws-elasticache-terraform.git?ref=master"
}
```

## References