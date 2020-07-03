resource "aws_elasticache_cluster" "this" {
  cluster_id           = var.aws_elasticache_cluster_cluster_id
  engine               = "redis"
  engine_version       = "5.0.6" # https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html
  maintenance_window   = "sun:05:00-sun:09:00"
  node_type            = "cache.t3.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis5.0"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.this.name
  security_group_ids   = [var.aws_security_group_id]
  apply_immediately    = false
  # snapshot_arns
  # snapshot_name
  # snapshot_window 
  # snapshot_retention_limit
  # notification_topic_arn
  # availability_zone

  tags = {
    Namespace = var.namespace
  }
}

resource "aws_elasticache_subnet_group" "this" {
  name        = var.aws_elasticache_subnet_group_name
  description = "Managed by Terraform"
  subnet_ids  = [var.aws_subnet_id1, var.aws_subnet_id1]
}