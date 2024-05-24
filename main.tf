provider "aws" {
}

variable "stack_name" {
    default = "PrismaCloudApp"
}

variable "pcs_template_url"{
    default = "https://bechong-pcs-template.s3.ap-southeast-1.amazonaws.com/prisma-cloud-aws-iam-role-test.template"
}

variable "OrganizationalUnitIds" {
    default = "r-1234"
}


resource "aws_cloudformation_stack" "prismacloud_stack" {
  name = var.stack_name

  parameters ={
    OrganizationalUnitIds = var.OrganizationalUnitIds
  }

  template_url = "https://bechong-pcs-template.s3.ap-southeast-1.amazonaws.com/prisma-cloud-aws-iam-role-test.template"
  capabilities       = ["CAPABILITY_NAMED_IAM"]
}