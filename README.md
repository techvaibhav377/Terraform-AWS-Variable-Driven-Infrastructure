# Terraform-AWS-Variable-Driven-Infrastructure


This Terraform project created by Vaibhav Gautam and it aims to provision resources in AWS including a VPC, subnets (public and private), instances, security groups, and key pairs. Perfect use of Terraform Variable for Driven Infra. Below is a breakdown of the files and tasks completed in this project.


#Files Overview 

1. provider.tf: Configures the AWS provider with the specified region and access keys.
2. variable.tf: Declares variables used throughout the project including AWS access keys, instance configurations, VPC CIDR blocks, subnet CIDR blocks, and more.
3. multi-instance-deploye.tf: Defines Terraform resources for launching instances in both public and private subnets.
4. vpc-public-pvt-subnet.tf: Defines resources for creating a VPC, public and private subnets, internet gateway, NAT gateway, route tables, and associations.
5. security-group.tf: Defines an AWS security group allowing inbound SSH traffic from any IP address and all ICMP traffic, and allowing all outbound traffic.
6. key-pair.tf: Defines an AWS key pair to be used for SSH access to the instances.
7. output.tf: Defines output values including VPC ID and subnet IDs for later reference.


Tasks Completed
>> AWS Provider Configuration: Configured AWS provider with access keys and specified region.
>> Variable Declaration: Declared variables for AWS access keys, instance configurations, VPC CIDR blocks, subnet CIDR blocks, etc.
>> VPC and Subnet Creation: Created a VPC with public and private subnets, each with specified CIDR blocks.
>> Internet and NAT Gateway Setup: Configured internet and NAT gateways for public and private subnet internet access.
>> Route Table Configuration: Created route tables and associated subnets with appropriate routes.
>> Instance Launching: Launched instances in both public and private subnets, specifying instance types, AMIs, key pairs, and security groups.
>> Security Group Definition: Defined a security group allowing inbound SSH and ICMP traffic and all outbound traffic.
>> Key Pair Creation: Created an AWS key pair for SSH access to instances.
>> Output Definition: Defined output values including VPC ID and subnet IDs for reference.
