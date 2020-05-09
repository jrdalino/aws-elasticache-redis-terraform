# ElastiCache Cluster
output "aws_elasticache_cluster_cache_nodes" {
  value       = "${aws_elasticache_cluster.this.cache_nodes}"
  description = "List of node objects including id, address, port and availability_zone. Referenceable e.g. as aws_elasticache_cluster.bar.cache_nodes.0.address"
}

output "aws_elasticache_cluster_configuration_endpoint" {
  value       = "${aws_elasticache_cluster.this.configuration_endpoint}"
  description = "(Memcached only) The configuration endpoint to allow host discovery."
}

output "aws_elasticache_cluster_cluster_address" {
  value       = "${aws_elasticache_cluster.this.cluster_address}"
  description = "(Memcached only) The DNS name of the cache cluster without the port appended."
}