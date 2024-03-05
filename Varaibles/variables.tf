variable "ami_id" {
  type = string # this is the data type
  default = "ami-0f3c7d07486cad139" # this is the default value ( #devops-practice in us-east-1)
}

variable "instance_type" {
  # type = string # this is the data type
  default = "t2.micro"
}