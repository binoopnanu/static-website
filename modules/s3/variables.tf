variable "bucket_name" {
  type = string
}

variable "site_dir" {
  type = string
}

variable "force_destroy" {
  type    = bool
  default = true
}

variable "enable_versioning" {
  type    = bool
  default = true
}
