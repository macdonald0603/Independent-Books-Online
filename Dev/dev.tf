provider "aws" {
   region = var.region
}

resource "aws_efs_file_system" "dev_efs" {
  creation_token = "dev-efs"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
}

resource "aws_cloudwatch_log_group" "dev_logs" {
  name              = "/aws/dev/logs"
  retention_in_days = 30
}
