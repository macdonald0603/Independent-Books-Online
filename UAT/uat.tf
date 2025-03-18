provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_role" "sfn_role" {
  name               = "sfn_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Principal = {
          Service = "states.amazonaws.com"
        }
        Effect    = "Allow"
        Sid       = ""
      }
    ]
  })
}

# Define ElastiCache Subnet Group first to ensure it exists
resource "aws_elasticache_subnet_group" "my_subnet_group" {
  name        = "my-custom-subnet-group"
  subnet_ids  = ["subnet-0ee274ee16c11633e", "subnet-0fb8756f72eb0ae1f"] # Replace with actual subnet IDs
  description = "My custom subnet group for ElastiCache"
}

# ElastiCache Cluster, depends on the subnet group being created
resource "aws_elasticache_cluster" "uat_redis" {
  cluster_id          = "uat-redis-cluster"
  engine              = "redis"
  node_type           = "cache.t3.micro"
  num_cache_nodes     = 1
  subnet_group_name   = aws_elasticache_subnet_group.my_subnet_group.name  # Ensure it's referencing the created subnet group
}

# SFN State Machine
resource "aws_sfn_state_machine" "uat_workflow" {
  name     = "uat-test-workflow"
  role_arn = aws_iam_role.sfn_role.arn
  definition = <<EOF
  {
    "Comment": "UAT Workflow",
    "StartAt": "Start",
    "States": {
      "Start": {
        "Type": "Pass",
        "Next": "Success"
      },
      "Success": {
        "Type": "Succeed"
      }
    }
  }
  EOF
}
