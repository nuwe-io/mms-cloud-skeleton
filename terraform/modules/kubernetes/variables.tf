variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "name" {
  description = "Base name for resources"
  default     = "mms-cloud-skeleton"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-west1"
}

variable "zones" {
  description = "The zone to host the cluster in (required if is a zonal cluster)"
  default     = ["europe-west1-b", "europe-west1-c", "europe-west1-d"]
}

variable "project_number" {
  description = "GCP project number"
}

variable "vpc_self_link" {
  description = "VPC self link to attach to GKE"
}

variable "subnet_self_link" {
  description = "Subnet self link to attach to GKE"
}