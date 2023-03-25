resource "kubernetes_deployment" "app" {
  metadata {
    name = "app-deployment"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "app"
      }
    }

    template {
      metadata {
        labels = {
          app = "app"
        }
      }

      spec {
        container {
          image = "your-docker-image:tag" # Reemplaza your-docker-image:tag con la ruta de tu imagen de Docker
          name  = "app-container"
          port {
            container_port = 3000
            name           = "http"
          }
        }
      }
    }
  }
}
