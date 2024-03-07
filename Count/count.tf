resource "aws_instance" "count" {
  count = 10
  ami = var.ami_id #devops-practice in us-east-1
  #instance_type = "t2.micro"
  instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "MySQL" ? "t3.medium" : "t2.micro"
  tags = {
    Name = var.instance_names[count.index]
  }

}

# MongoDB Cart Catalogue User Redis MySQL RabbitMQ Shipping Payment Web