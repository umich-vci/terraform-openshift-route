output "host" {
  description = "The hostname pointing at the service"
  value       = jsondecode(restapi_object.main.api_response).spec.host
}
