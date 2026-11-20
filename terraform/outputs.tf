output "web_public_ip" {
  value = aws_instance.web_server.public_ip
}

output "web_instance_id" {
  value = aws_instance.web_server.id
}

output "db_instance_id" {
  value = aws_instance.db_server.id
}

