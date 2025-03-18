variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
  #see test line 4 in compute
}

# Uncomment if needed
# variable "subnet_ids" {
#   type = list(string)
# }

variable "region" {
  description = "The AWS region where resources will be deployed"
  type        = string
  default     = "us-east-2"  # Default region wrapped in quotes
  #see test line 2 in dev.tf
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
  default     = "dev"  # Default environment
}