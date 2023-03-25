

resource "google_container_cluster" "cluster-hackathon" {
  project  = "" # Replace with your Project ID, https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects
  name     = "cluster-hackathon"
  location = "us-west1-a"

  min_master_version = "1.16"

  # Enable Alias IPs to allow Windows Server networking.
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "/14"
    services_ipv4_cidr_block = "/20"
  }

  # Removes the implicit default node pool, recommended when using
  # google_container_node_pool.
  remove_default_node_pool = true
  initial_node_count       = 1
}

# Small Linux node pool to run some Linux-only Kubernetes Pods.
resource "google_container_node_pool" "linux_pool" {
  name     = "linux-pool"
  project  = google_container_cluster.cluster-hackathon.project
  cluster  = google_container_cluster.cluster-hackathon.name
  location = google_container_cluster.cluster-hackathon.location

  node_config {
    image_type = "COS_CONTAINERD"
  }
}

# Node pool of Windows Server machines.
resource "google_container_node_pool" "windows_pool" {
  name     = "windows-pool"
  project  = google_container_cluster.cluster-hackathon.project
  cluster  = google_container_cluster.cluster-hackathon.name
  location = google_container_cluster.cluster-hackathon.location

  node_config {
    machine_type = "e2-standard-4"
    image_type   = "WINDOWS_LTSC" # Or WINDOWS_SAC for new features.
  }

  # The Linux node pool must be created before the Windows Server node pool.
  depends_on = [google_container_node_pool.linux_pool]
}
