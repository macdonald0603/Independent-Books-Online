provider "aws" {
  region = "us-east-2"
}

resource "aws_wafv2_web_acl" "prod_waf" {
  name        = "prod-waf-acl"
  description = "WAFv2 Web ACL for prod"
  scope       = "REGIONAL"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "prod-waf"
    sampled_requests_enabled   = true
  }

  rule {
    name     = "SQLInjectionRule"
    priority = 1

    action {
      block {}
    }

    statement {
      sqli_match_statement {
        field_to_match {
          query_string {}
        }

        # ✅ THIS is the correct block name (singular)
        text_transformation {
          priority = 0
          type     = "URL_DECODE"
        }
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "sql-injection-rule"
      sampled_requests_enabled   = true
    }
  }

  tags = {
    Environment = "Production"
    Owner       = "YourTeam"
  }
}
