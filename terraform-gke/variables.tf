variable "project_id" {
  description = "ID del proyecto de GCP"
  default     = "aqvwa13jfqszux6hm4qihaeb4mklhk"
}

variable "region" {
  description = "Región de GCP en la que se desplegará el clúster de Kubernetes"
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to deploy resources into."
  type        = string
  default     = "us-central1-a"
}

variable "image" {
  description = "The image to deploy."
  type        = string
  default     = "gcr.io/aqvwa13jfqszux6hm4qihaeb4mklhk/services/vite-app"
}


variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
  sensitive   = true
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}
