output "pip" {
  value = aws_lightsail_instance.test-server.public_ip_address
}
output "ssh-command" {
  value = "ssh -i ${local_file.ssh_key.filename} ${aws_lightsail_instance.test-server.username}@${aws_lightsail_instance.test-server.public_ip_address}"
}