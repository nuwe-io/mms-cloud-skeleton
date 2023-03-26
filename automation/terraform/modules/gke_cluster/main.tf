resource "google_container_cluster" "gke_cluster" {
  name     = var.gke_cluster_name
  location = var.gcp_region

  // Enable Kubernetes RBAC for better security
  enable_legacy_abac = false

  // Create a private cluster for better security
  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_pool {
    name = "default-pool"

    node_count = var.gke_cluster_node_count

    node_config {
      preemptible  = var.gke_cluster_node_is_preemptible
      machine_type = var.gke_cluster_node_machine_type

      metadata = {
        disable-legacy-endpoints = "true"
      }

      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }
  }
}

resource "google_compute_network" "vpc" {
  name                    = "gke-vpc"
  auto_create_subnetworks = true
}
