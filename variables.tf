variable "aws_zone_id" {
  description = "route53 Hosted Zone ID to manage DNS records in."
}

variable "dmarc_rua" {
  description = "dmarc rua email address."
}

variable "domain_name" {
  description = "@domain."
}

variable "s3_bucket" {
  description = "bucket to hold inbound email."
}
