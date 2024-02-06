output "instance_id" {
  description = "ID of the EC2 instance"
  value = aws_instance.tf_ec2_instance.id
}

output "instance_public_ip" {
    description = "The public IPv4 of the EC2 instance"
    value = aws_instance.tf_ec2_instance.public_ip
}