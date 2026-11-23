resource "aws_instance" "Jayec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

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
