# Prisma Cloud AWS Organization Onboarding CloudFormation Template with Terraform Example

This is an example of a Terraform script to deploy Cloud Formation template generated from Prisma Cloud, to onboard AWS Organization. Here is the standard workflow:
1. Generate CloudFormation Template as part of Prisma Cloud onboarding.
2. Upload the CloudFormation Template to a S3 bucket. (Limitation of 51,200 Bytes for template_body, refer [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack))
3. Update the variables in ```main.tf```.
4. Run ```terraform apply```.

For CloudFormation template sample generated from Prisma Cloud, refer [here](https://github.com/chiangyaw/pcs-aws-org-onboard-sample)