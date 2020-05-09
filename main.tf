resource "aws_elasticache_cluster" "this" {
  cluster_id           = var.aws_elasticache_cluster_cluster_id
  # replication_group_id 
  engine               = var.aws_elasticache_cluster_engine
  engine_version       = var.aws_elasticache_cluster_engine_version
  # maintenance_window 
  node_type            = var.aws_elasticache_cluster_node_type
  num_cache_nodes      = var.aws_elasticache_cluster_num_cache_nodes
  parameter_group_name = var.aws_elasticache_cluster_parameter_group_name
  port                 = var.aws_elasticache_cluster_port
  subnet_group_name    = var.aws_elasticache_cluster_subnet_group_name
  # security_group_names
  security_group_ids   = [var.aws_elasticache_cluster_security_group_ids]
  # apply_immediately
  # snapshot_arns
  # snapshot_name
  # snapshot_window 
  # snapshot_retention_limit
  # notification_topic_arn
  # az_mode
  # availability_zone
  # preferred_availability_zones 
  # tags
}