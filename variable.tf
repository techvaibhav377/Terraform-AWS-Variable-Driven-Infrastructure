variable "akey" {
  default = "AKIA6GBMEB6YTJJRSF55"
}

variable "skey" {
        default = "EhA9q9CIIZva+KWGPkCIZR38ofQn98YF/CbZK2EC"
      
}

variable "instance1_ami" {
  description = "AMI ID for instance1"
  default     = "ami-013168dc3850ef002"
}

variable "instance1_type" {
  description = "Instance type for instance1"
  default     = "t2.micro"
}

variable "count1" {
  description = "Number of instances"
  default     = 1
}

variable "instance1_name" {
  description = "Name for instance1"
  default     = "Public-TF"
}

variable "instance2_ami" {
  description = "AMI ID for instance2"
  default     = "ami-03bb6d83c60fc5f7c"
}

variable "instance2_type" {
  description = "Instance type for instance2"
  default     = "t2.micro"
}

variable "count2" {
  description = "Number of instances"
  default     = 1
}

variable "instance2_name" {
  description = "Name for instance2"
  default     = "Private-TF"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  default     = "vaibhav"
}

variable "pub_key" {
  description = "Public SSH key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCxhlAlHPcoP1QzD0lxO114DSiOSq2B0wWDbDogTC0xqcUwniqLUixwC/y5fLEuIbzXdcZHDbHG2xJNww6GNjqvmr5z9Wi/zA9DtuUq32zKWHwrpbK4aarymuQGb7on+JkW0u5E7ovdGm5KWGltIWR4xKp5Ypx7gE0TCSdo9NSnfXmi+urvq9Lxd3mJDUUQmSbr64NVjn9BIMgcY9a7Tnx0wilFPNot/Zcsvg7dvYQDj8V80uGDGEkxVfSKTFQpKNGEm9cttUlo5KtY21T1wCix7mrEIlh4jyM+fxjbpxineijkx3WwlaNeLavvbRAsT0UYiXpOq6OXOs7etTWK/5wZsPI+fq9y9Te90tEfPJEOjLyTWKW3xMNsfY3vagziLd6W+aMi8UNBThwAXg8JmgUFHdeJLSMs+rtfzwI8ddUhVPGglLZdumGGRHCzVbuAVxgpjuhra0YaFanACw/KOhPdmWrvvueH7TneL5hBXREzBDMEfWCqbu9DMzLX/rFv/Lc= vaibh@DESKTOP-0971CIA"
}

variable "sg_name" {
  description = "Name of the security group"
  default     = "aws_security_group.security_group.name"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  default = "ap-south-1a"
  
}

variable "sg_id" {
  default = "[aws_security_group.security_group.id]"
  description = "sg id for launced instance"
  
}