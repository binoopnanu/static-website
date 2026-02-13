
locals {
  bucket_name = "bn-15022026-${var.project_name}"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = local.bucket_name
  site_dir    = var.site_dir
}

module "cdn" {
  source                         = "./modules/cloudfront"
  project_name                   = var.project_name
  s3_bucket_name                 = module.s3.bucket_name
  s3_bucket_arn                  = module.s3.bucket_arn
  s3_bucket_regional_domain_name = module.s3.bucket_regional_domain_name
  default_root_object            = "index.html"
}

output "cloudfront_url" {
  value = "https://${module.cdn.cloudfront_domain_name}"
}

