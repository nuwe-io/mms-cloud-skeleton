# https://registry.terraform.io/providers/hashicorp/google/latest/docs
data "google_client_config" "provider" {}
provider "google" {
  project = var.project_id
  region  = var.region
}

# provider "kubectl" {
#   load_config_file       = false
#   host                   = "https://${google_container_cluster.primary.endpoint}"
#   token                  = data.google_client_config.provider.access_token
#   cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth.0.cluster_ca_certificate)
# }

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    # kubectl = {
    #   source  = "gavinbunney/kubectl"
    #   version = ">= 1.7.0"
    # }
  }
}