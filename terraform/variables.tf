variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "mms-cluster-gke"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-west1"
}

variable "zones" {
  description = "The zone to host the cluster in (required if is a zonal cluster)"
  default     = ["europe-west1-b", "europe-west1-c", "europe-west1-d"]
}

variable "service_account_email" {
  description = "Service account email for using from GKE"
}