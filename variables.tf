# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

variable "namespace" {
  type        = string
  description = ""    
}

# Network
variable "aws_subnet_id1" {
  type        = string
  description = ""
}

variable "aws_subnet_id2" {
  type        = string
  description = ""
}

variable "aws_security_group_id" {
  type        = string
  description = ""
}

# Elasticache Cluster
variable "aws_elasticache_cluster_cluster_id" {
  type        = string
  description = "(Required) Group identifier. ElastiCache converts this name to lowercase" 
}

# ElastiCache Subnet Group
variable "aws_elasticache_subnet_group_name" {
  type        = string
  description = ""
}