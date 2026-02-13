output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.this.domain_name
}

output "cloudfront_arn" {
  value = aws_cloudfront_distribution.this.arn
}
