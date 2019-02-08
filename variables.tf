variable aws_region {
  description = "aws region."
  default     = "us-west-2"
}

variable aws_profile {
  description = "aws access profile. Eg., ~/.aws/credentials"
}

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

variable "bounce_addresses" {
  description = "list of email addresses to send bounce reports to."
  type        = "list"
}

variable "from_addresses" {
  description = "list of email addresses to receive for while in sandbox mode."
  type        = "list"
  default     = []
}
