####################
# ECR
####################
resource "aws_ecr_repository" "mastodon" {
  name = "ecr-mastodon"
}

####################
# Cluster
####################
resource "aws_ecs_cluster" "cluster" {
  name = "cluster-mastodon"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}