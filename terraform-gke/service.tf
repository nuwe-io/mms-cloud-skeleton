resource "kubernetes_service" "vite-app" {
  metadata {
    name = "vite-app"
  }

  spec {
    selector = {
      app = "vite-app"
    }

    port {
      name        = "http"
      port        = 80
      target_port = "http"
    }

    type = "LoadBalancer"
  }
}
