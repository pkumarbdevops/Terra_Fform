#  resource "aws_instance" "my-wish-i-can-decide" {
#      ami = "ami-0f3c7d07486cad139" #devops-practice in us-east-1
#      instance_type = "t2.micro"
#  }

 resource "aws_instance" "my-wish-i-can-decide" {
     ami = var.ami_id #devops-practice in us-east-1
     instance_type = var.instance_type
     security_groups = [aws_security_group.Allow_All.name]
 }

 # tags = {
    #     Name = "MongoDB"
    #     Environment = "DEV"
    #     Terraform = "true"
    #     Project = "Roboshop"
    #     Component = "MongoDB"
    # }

tags = var.tags
}