terraform {
  required_providers {
    restapi = {
      source  = "Mastercard/restapi"
      version = ">= 1.18.0"
    }
  }
  required_version = ">= 1.3.0, < 2.0.0"
}
