output "cluster_endpoint" {
  value       = module.gke_cluster.cluster_endpoint
  description = "The endpoint of the deployed GKE cluster"
}
