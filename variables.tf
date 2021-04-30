variable "region"{
    default ="us-east-1"
}

variable "ami" {
    default = "ami-00e87074e52e6c9f9"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "key_name" {
    default = "ssh-key-pair"
}

variable "az-1a" {
    default = "us-east-1a"
}