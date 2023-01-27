locals {
  route_data = {
    kind       = "Route"
    apiVersion = "route.openshift.io/v1"
    metadata = {
      name      = var.name
      namespace = var.namespace
      labels    = {}
    }
    spec = {
      to = {
        kind = "Service"
        name = var.service
      }
      tls = {
        termination                   = "edge"
        insecureEdgeTerminationPolicy = "Redirect"
        destinationCACertificate      = ""
      }
      port = {
        targetPort = var.target_port
      }
    }
  }
}

resource "restapi_object" "main" {
  object_id = local.route_data.metadata.name
  path      = "/apis/route.openshift.io/v1/namespaces/${var.namespace}/routes"
  data      = jsonencode(local.route_data)
  force_new = [
    local.route_data.metadata.name
  ]
}