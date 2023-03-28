output "gke_name" {
  description = "GKE deployed name"
  value = google_container_cluster.primary.name
}