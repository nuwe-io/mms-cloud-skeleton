provider "google" {
  project = "hale-woodland-381708"
  region  = "us-central1"
}

resource "google_container_cluster" "cluster" {
  name               = "cluster-hackathon"
  location           = "us-central1-c"
  initial_node_count = 1

  node_config {
    machine_type = "n1-standard-1"
  }

}
