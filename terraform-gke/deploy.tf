data "google_container_registry_image" "vite-app" {
  name = "gcr.io/aqvwa13jfqszux6hm4qihaeb4mklhk/services/vite-app"
  tag  = "v1.0.0"
}

resource "kubernetes_deployment" "vite-app" {
  metadata {
    name = "vite-app"
  }

  spec {
    selector {
      match_labels = {
        app = "vite-app"
      }
    }

    replicas = 2

    template {
      metadata {
        labels = {
          app = "vite-app"
        }
      }

      spec {
        container {
          name  = "vite-app"
          image = data.google_container_registry_image.vite-app.name

          port {
            container_port = 3000
            name           = "http"
          }
        }
      }
    }
  }
}
