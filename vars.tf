#provider

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_region" {
        type = string
        default = "ap-south-1"
}


# vpc

variable "vpc_ip" {
        type = string
        default = "10.0.0.0/16"
}


variable "subnet_ip" {
        type = string
        default = "10.0.1.0/24"
}

variable "azs" {
        type = string
        default = "ap-south-1a"
}

# EC2

variable "ami_id" {
        type = string
        default = "ami-06984ea821ac0a879"
}

variable "ami_type" {
        type = string
        default = "t2.micro"
}

variable "user_name" {
        type = string
        default = "ec2-user"
}


variable "pri_key_path" {
        type = string
        default = "path/security.pem"  #path of pem key
}

variable "pub_key_path" {
        type = string
        default = "path/id_rsa.pub"   #path of public key
}




