variable "domain_name" {
  description = "Root domain for the website (e.g. example.com)"
  type        = string
}

variable "aws_region" {
  description = "Primary AWS region for S3 and other regional resources"
  type        = string
  default     = "us-east-1"
}

variable "github_repo" {
  description = "GitHub repo in owner/repo format (e.g. chrisneighbor/personal-website)"
  type        = string
}
