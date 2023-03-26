#········[Provider's Vars]········#
variable "gcp_project_id" {
  type        = string
  sensitive   = true
  description = "GCP Project's ID"
}

variable "gcp_region" {
  type        = string
  description = "GCP Project's deployment region"
  default     = "europe-west1"
}

variable "gcp_credentials" {
  type        = string
  sensitive   = true
  description = "GCP Service Account's JSON key"
}
#--------[\Provider's Vars]--------#

#········[Resources Vars]········#
variable "gke_cluster_name" {
  type        = string
  description = "GKE cluster's name"
}

variable "gke_cluster_node_count" {
  type        = string
  description = "GKE node pool's size"
  default     = "2"
}

variable "gke_cluster_node_is_preemptible" {
  description = "Whether the GKE nodes should be preemptible"
  type        = bool
  default     = false
}

variable "gke_cluster_node_machine_type" {
  description = "The machine type for the GKE nodes"
  type        = string
  default     = "n1-standard-1"
}
#--------[\Resources Vars]--------#
