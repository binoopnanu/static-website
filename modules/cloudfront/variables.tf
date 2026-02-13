variable "project_name" {
  type = string
}

variable "s3_bucket_arn" {
  type = string
}

variable "s3_bucket_regional_domain_name" {
  type = string
}

variable "default_root_object" {
  type    = string
  default = "index.html"
}

# variable "price_class" {
#   type    = string
#   default = "PriceClass_100"
# }
variable "s3_bucket_name" {
  type = string
}
