provider "google" {
  region      = var.gcp_region
  project     = var.gcp_project_id
  credentials = var.gcp_credentials
}
