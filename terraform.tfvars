# AWS provider settings
region            = "us-west-2"
profile           = "default"

# Environment tagging
environment       = "dev"
project_name      = "my-app"
owner             = "team-ops"

# VPC configuration
vpc_cidr          = "10.0.0.0/16"
public_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets   = ["10.0.101.0/24", "10.0.102.0/24"]

# EC2 instance settings
instance_type     = "t2.micro"
key_pair_name     = "my-keypair"
allowed_ssh_cidr  = "203.0.113.0/24"

# RDS database settings
db_engine         = "postgres"
db_engine_version = "13.4"
db_instance_class = "db.t3.small"
db_name           = "appdb"
db_username       = "admin"
db_password       = "P@ssw0rd!"  # consider using Terraform Cloud or Vault for secrets
db_allocated_storage = 20

# Autoscaling group settings
asg_min_size      = 1
asg_max_size      = 3
asg_desired_capacity = 2

# Tags applied to all resources
common_tags = {
  Terraform   = "true"
  Environment = var.environment
  Project     = var.project_name
}
