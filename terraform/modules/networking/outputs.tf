output "vpc_self_link" {
  description = "VPC self link to attach to GKE"
  value = google_compute_network.main.self_link
}

output "subnet_self_link" {
  description = "Subnet self link to attach to GKE"
  value = google_compute_subnetwork.private.self_link
}