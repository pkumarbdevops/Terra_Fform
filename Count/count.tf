resource "aws_instance" "count" {
  count = 10
  ami = var.ami_id #devops-practice in us-east-1
  instance_type = "t2.micro"
  }

# MongoDB Cart Catalogue User Redis MySQL RabbitMQ Shipping Payment Web