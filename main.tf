resource "aws_instance" "Jayec2" {
  ami           = "ami-0a123d16bb24c4c67"
  instance_type = "t3.micro"

  tags = {
    Name = "TryCI/CDviaJenkins"
  }
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.Jayec2.id
}

output "instance_public_ip" {
  description = "The public IP address assigned to the instance"
  value       = aws_instance.Jayec2.public_ip
}

output "instance_private_ip" {
  description = "The private IP address assigned to the instance"
  value       = aws_instance.Jayec2.private_ip
}

output "instance_public_dns" {
  description = "The public DNS name assigned to the instance"
  value       = aws_instance.Jayec2.public_dns
}
