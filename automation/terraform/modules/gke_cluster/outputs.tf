output "cluster_endpoint" {
  value       = google_container_cluster.gke_cluster.endpoint
  description = "The endpoint of the deployed GKE cluster"
}
