terraform aws ses deployment w/ dashboard
===

[![Build Status](https://travis-ci.org/lsst-sqre/terraform-aws-ses.png)](https://travis-ci.org/lsst-sqre/terraform-aws-ses)

Usage
---

This package is intended to be used as a "top level" deployment, rather than as
a general purpose module, and thus declares provider configuration that may be
inappropriate in a module.

`terragrunt` configuration example:

```terraform
terragrunt = {
  terraform {
    source = "git::git@github.com:lsst-sqre/terraform-aws-ses.git//?ref=master"
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_profile | aws access profile. Eg., ~/.aws/credentials | string | n/a | yes |
| aws\_region | aws region. | string | `"us-west-2"` | no |
| aws\_zone\_id | route53 Hosted Zone ID to manage DNS records in. | string | n/a | yes |
| bounce\_addresses | list of email addresses to send bounce reports to. | list | n/a | yes |
| dmarc\_rua | dmarc rua email address. | string | n/a | yes |
| domain\_name | @domain. | string | n/a | yes |
| from\_addresses | list of email addresses to receive for while in sandbox mode. | list | `[]` | no |
| s3\_bucket | bucket to hold inbound email. | string | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

`pre-commit` hooks
---

```bash
go get github.com/segmentio/terraform-docs
pip install --user pre-commit
pre-commit install

# manual run
pre-commit run -a
```

See Also
---

* [`terraform`](https://www.terraform.io/)
* [`terragrunt`](https://github.com/gruntwork-io/terragrunt)
* [`terraform-docs`](https://github.com/segmentio/terraform-docs)
* [`pre-commit`](https://github.com/pre-commit/pre-commit)
* [`pre-commit-terraform`](https://github.com/antonbabenko/pre-commit-terraform)
