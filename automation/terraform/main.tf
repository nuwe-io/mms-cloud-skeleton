module "gke_cluster" {
  source = "./modules/gke_cluster"

  gcp_project_id                  = var.gcp_project_id
  gcp_region                      = var.gcp_region
  gcp_credentials                 = var.gcp_credentials
  gke_cluster_name                = var.gke_cluster_name
  gke_cluster_node_count          = var.gke_cluster_node_count
  gke_cluster_node_is_preemptible = var.gke_cluster_node_is_preemptible
  gke_cluster_node_machine_type   = var.gke_cluster_node_machine_type
}
