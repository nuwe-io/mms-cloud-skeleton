variable "project_id" {
  description = "ID del proyecto de GCP"
  default     = "aqvwa13jfqszux6hm4qihaeb4mklhk"
}

variable "region" {
  description = "Región de GCP en la que se desplegará el clúster de Kubernetes"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Nombre del clúster de Kubernetes que se creará"
  default     = "cluster-hackathon"
}


variable "zone" {
  description = "The zone to deploy resources into."
  type        = string
  default     = "us-central1-a"
}

variable "network" {
  description = "The network to deploy resources into."
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "The subnetwork to deploy resources into."
  type        = string
  default     = "default"
}

variable "ip_range_pods" {
  description = "The IP range to use for pods."
  type        = string
  default     = "pods"
}

variable "ip_range_services" {
  description = "The IP range to use for services."
  type        = string
  default     = "services"
}

