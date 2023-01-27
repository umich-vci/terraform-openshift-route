variable "ca_certificate" {
  type        = string
  description = "The CA certificate corresponding to `certificate`."
  default     = null
}

variable "certificate" {
  type        = string
  description = "The certificate to use on the router."
  default     = null
}

variable "destination_ca_certificate" {
  type        = string
  description = "The CA certificate of the final destination."
  default     = ""
}

variable "host" {
  type        = string
  description = "The DNS hostname to use for the route."
  default     = null
}

variable "insecure_edge_termination_policy" {
  type        = string
  description = "The insecure edge termination policy."
  default     = "Redirect"

  validation {
    condition     = contains(["Redirect", "Allow", "Disable"], var.insecure_edge_termination_policy)
    error_message = "Must be one of \"Redirect\", \"Allow\", or \"Disable\"."
  }
}

variable "key" {
  type        = string
  description = "The private key of the `certificate` used for the router."
  default     = null
}

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

variable "termination" {
  type        = string
  description = "The termination type done by the router."
  default     = "edge"

  validation {
    condition     = contains(["edge", "passthrough", "reencrypt"], var.termination)
    error_message = "Must be one of \"edge\", \"passthrough\", or \"reencrypt\"."
  }
}

variable "target_port" {
  type        = string
  description = "The target port of the service to route to"
}

variable "weight" {
  type        = number
  description = "The weight of the target compared to others"
  default     = 100

  validation {
    condition     = var.weight >= 0 && var.weight <= 100
    error_message = "weight must be between 0 and 100."
  }
}
