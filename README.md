## terraform-openshift-route

There doesn't seem to be an OpenShift provider available for Terraform.

This module will let you create an [OpenShift Route](https://docs.openshift.com/container-platform/4.11/rest_api/network_apis/route-route-openshift-io-v1.html)
in code that is using the [Kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs) provider to work with OpenShift.


You're probably much better off just using the [`kubernetes_ingress_v1`](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/ingress_v1) resource
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_restapi"></a> [restapi](#requirement\_restapi) | >= 1.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_restapi"></a> [restapi](#provider\_restapi) | >= 1.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [restapi_object.main](https://registry.terraform.io/providers/Mastercard/restapi/latest/docs/resources/object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ca_certificate"></a> [ca\_certificate](#input\_ca\_certificate) | The CA certificate corresponding to `certificate`. | `string` | `null` | no |
| <a name="input_certificate"></a> [certificate](#input\_certificate) | The certificate to use on the router. | `string` | `null` | no |
| <a name="input_destination_ca_certificate"></a> [destination\_ca\_certificate](#input\_destination\_ca\_certificate) | The CA certificate of the final destination. | `string` | `""` | no |
| <a name="input_host"></a> [host](#input\_host) | The DNS hostname to use for the route. | `string` | `null` | no |
| <a name="input_insecure_edge_termination_policy"></a> [insecure\_edge\_termination\_policy](#input\_insecure\_edge\_termination\_policy) | The insecure edge termination policy. | `string` | `"Redirect"` | no |
| <a name="input_key"></a> [key](#input\_key) | The private key of the `certificate` used for the router. | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to attach to the route | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the OpenShift route | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The name of the namespace to create the OpenShift route in | `string` | n/a | yes |
| <a name="input_service"></a> [service](#input\_service) | The name of the service to route to | `string` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | The target port of the service to route to | `string` | n/a | yes |
| <a name="input_termination"></a> [termination](#input\_termination) | The termination type done by the router. | `string` | `"edge"` | no |
| <a name="input_weight"></a> [weight](#input\_weight) | The weight of the target compared to others | `number` | `100` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host"></a> [host](#output\_host) | The hostname pointing at the service |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
