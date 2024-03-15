variable "akey" {
  default = "(access-key)"
}

variable "skey" {
        default = "(secrete-key)"
      
}

variable "instance1_ami" {
  description = "AMI ID for instance1"
  default     = "(first image id -ami)"
}

variable "instance1_type" {
  description = "Instance type for instance1"
  default     = "(instance type)"
}

variable "count1" {
  description = "Number of instances"
  default     = (number of instance with first ami)
}

variable "instance1_name" {
  description = "Name for instance1"
  default     = "(instance-name for first ami)"
}

variable "instance2_ami" {
  description = "AMI ID for instance2"
  default     = "(secound instance ami)"
}

variable "instance2_type" {
  description = "Instance type for instance2"
  default     = "(secound ami instance type)"
}

variable "count2" {
  description = "Number of instances"
  default     = (number of instance with secound ami)
}

variable "instance2_name" {
  description = "Name for instance2"
  default     = "(secound ami instances name)"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  default     = "(key-naem)"
}

variable "pub_key" {
  description = "Public SSH key"
  default     = "(copy your public key content)"  #if you dont have create a pair with ssh-keygen for login with your private key .pem file 
}

variable "sg_name" {
  description = "Name of the security group"
  default     = "aws_security_group.security_group.name"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "(vpc-cidr)"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "(pub-subnet cidr)"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "(private-subnet cidr)"
}

variable "availability_zone" {
  default = "(availibility zone for subnets)"
  
}

variable "sg_id" {
  default = "[aws_security_group.security_group.id]"
  description = "sg id for launced instance"
  
}
