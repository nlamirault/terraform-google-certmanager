# Cert-Manager into Google Cloud Platform

![Tfsec](https://github.com/nlamirault/terraform-google-cert-manager/workflows/Tfsec/badge.svg)

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

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.0 |
| google | >= 3.54.0 |

## Providers

| Name | Version |
|------|---------|
| google | >= 3.54.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [google_project_iam_member](https://registry.terraform.io/providers/hashicorp/google/3.54.0/docs/resources/project_iam_member) |
| [google_service_account](https://registry.terraform.io/providers/hashicorp/google/3.54.0/docs/resources/service_account) |
| [google_service_account_iam_member](https://registry.terraform.io/providers/hashicorp/google/3.54.0/docs/resources/service_account_iam_member) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| namespace | The Kubernetes namespace | `string` | n/a | yes |
| project | The project in which the resource belongs | `string` | n/a | yes |
| service\_account | The Kubernetes service account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| service\_account | Service Account for Cert Manager |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
