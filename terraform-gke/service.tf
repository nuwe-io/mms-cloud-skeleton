resource "kubernetes_service" "app" {
  metadata {
    name = "app-service"
  }

  spec {
    selector = {
      app = "app"
    }

    port {
      name        = "http"
      port        = 80
      target_port = "http"
    }

    type = "LoadBalancer"
  }
}
