# ElastiCache Cluster
output "aws_elasticache_cluster_cache_nodes" {
  value       = aws_elasticache_cluster.this.cache_nodes
  description = "List of node objects including id, address, port and availability_zone. Referenceable e.g. as aws_elasticache_cluster.bar.cache_nodes.0.address"
}

# ElastiCache Subnet Group
output "aws_elasticache_subnet_group_description" {
  value       = aws_elasticache_subnet_group.this.description
  description = ""
}

output "aws_elasticache_subnet_group_name" {
  value       = aws_elasticache_subnet_group.this.name
  description = ""
}

output "aws_elasticache_subnet_group_subnet_ids" {
  value       = aws_elasticache_subnet_group.this.subnet_ids
  description = ""
}