provider "aws" {
  region = "eu-west-1"
}

module "vpc-peering" {
  source = "../"

  name              = "vpc-peering"
  repository        = "https://registry.terraform.io/modules/clouddrove/multi-account-peering/aws/0.14.0"
  environment       = "test"
  label_order       = ["name", "environment"]
  enable_peering    = true
  accepter_role_arn = "arn:aws:iam::XXXXXXXXXXXX:role/assume-role"
  accepter_region   = "eu-west-1"
  requestor_vpc_id  = "vpc-XXXXXXXXXXXXX"
  acceptor_vpc_id   = "vpc-XXXXXXXXXXXXX"
}



