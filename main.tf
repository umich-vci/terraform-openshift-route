locals {
  route_data = {
    kind       = "Route"
    apiVersion = "route.openshift.io/v1"
    metadata = {
      name      = var.name
      namespace = var.namespace
      labels    = var.labels
    }
    spec = {
      host = var.host
      to = {
        kind   = "Service"
        name   = var.service
        weight = var.weight
      }
      tls = {
        caCertificate                 = var.ca_certificate
        certificate                   = var.certificate
        destinationCACertificate      = var.destination_ca_certificate
        insecureEdgeTerminationPolicy = var.insecure_edge_termination_policy
        key                           = var.key
        termination                   = var.termination
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
    var.name,
    var.namespace,
  ]
}
