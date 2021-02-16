# Cert-Manager into Google Cloud Platform

![Tfsec](https://github.com/nlamirault/terraform-google-cert-manager/workflows/Tfsec/badge.svg)

## Terraform versions

Use Terraform `>= 0.14.0` minimum and Terraform Provider Google `3.54+`.

These types of resources are supported:

* [google_service_account](https://www.terraform.io/docs/providers/google/r/google_service_account.html)
* [google_project_iam_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_iam)
* [google_service_account_iam_member](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account_iam#google_service_account_iam_member)

## Usage

```hcl
module "cert_manager" {
  source  = "nlamirault/cert-manager/google"
  version = "1.0.0"
  
  project = var.project

  namespace       = var.namespace
  service_account = var.service_account
}
```

and variables :

```hcl
project = "foo-prod"

region = "europe-west1"

##############################################################################
# Cert-Manager

namespace       = "cert-manager"
service_account = "cert-manager"
```

## Documentation

### Providers

| Name | Version |
|------|---------|
| google | >= 3.54.0 |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| namespace | The Kubernetes namespace | `string` | n/a | yes |
| project | The project in which the resource belongs | `string` | n/a | yes |
| service\_account | The Kubernetes service account | `string` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| service\_account | Service Account for Cert Manager |
