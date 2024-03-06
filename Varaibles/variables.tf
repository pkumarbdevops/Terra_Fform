variable "ami_id" {
  type = string # this is the data type
  default = "ami-0f3c7d07486cad139" # this is the default value ( #devops-practice in us-east-1)
}

variable "instance_type" {
  # type = string # this is the data type
  default = "t2.micro"
}

variable "sg_name" {
  default = "Allow-All"
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

# Tags is nothing but Key Value Pairs. 

variable "tags" {
  type = map
  default = {
    Name = "MongoDB"
      Environment = "DEV"
      Terraform = "true"
      Project = "Roboshop"
      Component = "MongoDB"
  }
}