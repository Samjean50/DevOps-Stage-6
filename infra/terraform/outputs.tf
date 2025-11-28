output "server_public_ip" {
  description = "Public IP of the app server"
  value       = aws_instance.app_server.public_ip
}

output "server_id" {
  description = "Instance ID"
  value       = aws_instance.app_server.id
}

output "server_public_dns" {
  description = "Public DNS of the app server"
  value       = aws_instance.app_server.public_dns
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.app_server.id
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "ssh_command" {
  description = "SSH command to connect to the server"
  value       = "ssh -i ${var.ssh_private_key_path} ${var.ssh_user}@${aws_instance.app_server.public_ip}"
}