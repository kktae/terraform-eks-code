# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_vpc.vpc-vpc-:
resource "aws_vpc" "vpc-mycluster1" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "10.0.0.0/22"
  enable_classiclink               = false
  enable_classiclink_dns_support   = false
  enable_dns_hostnames             = true
  enable_dns_support               = true
  instance_tenancy                 = "default"
  tags = {
    "Name"                                        = "mycluster1-cluster/VPC"
#    "alpha.eksctl.io/cluster-name"                = "mycluster1"
#    "alpha.eksctl.io/eksctl-version"              = "0.29.2"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = var.cluster-name
  }
}

output "eks-vpc" {
  value = aws_vpc.vpc-mycluster1.id
}

output "eks-cidr" {
  value = aws_vpc.vpc-mycluster1.cidr_block
}
