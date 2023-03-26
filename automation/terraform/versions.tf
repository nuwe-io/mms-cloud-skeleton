terraform {
  required_version = "1.4.2"

  backend "gcs" {
    bucket      = "mms-cloud-challenge-tf-backend"
    prefix      = "terraform/state"
    credentials = "gcp-credentials.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.58.0"
    }
  }
}
