# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

# Elasticache Cluster
variable "aws_elasticache_cluster_cluster_id" {
  type        = string
  description = "(Required) Group identifier. ElastiCache converts this name to lowercase" 
}

variable "aws_elasticache_cluster_engine" {
  type        = string
  description = "(Required unless replication_group_id is provided) Name of the cache engine to be used for this cache cluster. Valid values for this parameter are memcached or redis"
}

variable "aws_elasticache_cluster_engine_version" {
  type        = string
  description = "(Optional) Version number of the cache engine to be used. See Describe Cache Engine Versions in the AWS Documentation center for supported versions"
}

variable "aws_elasticache_cluster_node_type" {
  type        = string
  description = "(Required unless replication_group_id is provided) The compute and memory capacity of the nodes. See Available Cache Node Types for supported node types"
}

variable "aws_elasticache_cluster_num_cache_nodes" {
  type        = string
  description = "(Required unless replication_group_id is provided) The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcache, this value must be between 1 and 20. If this number is reduced on subsequent runs, the highest numbered nodes will be removed."
}

variable "aws_elasticache_cluster_parameter_group_name" {
  type        = string
  description = "(Required unless replication_group_id is provided) Name of the parameter group to associate with this cache cluster"
}

variable "aws_elasticache_cluster_port" {
  type        = string
  description = "(Optional) The port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379. Cannot be provided with replication_group_id."
}