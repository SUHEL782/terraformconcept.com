output "ec2_public_ip" {
    value = aws_instance.my_Instance[*].public_ip
  
}

