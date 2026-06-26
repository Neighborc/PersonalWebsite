output "nameservers" {
  description = "Route 53 nameservers — set these at your domain registrar"
  value       = aws_route53_zone.website.name_servers
}

output "cloudfront_domain" {
  description = "CloudFront distribution domain (usable before custom domain is active)"
  value       = aws_cloudfront_distribution.website.domain_name
}

output "s3_bucket" {
  description = "S3 bucket name for website files"
  value       = aws_s3_bucket.website.id
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID — needed for cache invalidation in CI/CD"
  value       = aws_cloudfront_distribution.website.id
}

output "github_actions_role_arn" {
  description = "IAM role ARN for GitHub Actions OIDC — set as AWS_ROLE_ARN secret in GitHub"
  value       = aws_iam_role.github_actions.arn
}
