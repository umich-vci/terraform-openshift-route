variable "name" {
  type        = string
  description = "The name of the OpenShift route"
}
variable "namespace" {
  type        = string
  description = "The name of the namespace to create the OpenShift route in"
}

variable "service" {
  type        = string
  description = "The name of the service to route to"
}

variable "target_port" {
  type        = string
  description = "The target port of the service to route to"
}
