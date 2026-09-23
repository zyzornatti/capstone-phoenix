@@
output "server_public_ip" {
	value = aws_instance.server.public_ip
}

output "server_private_ip" {
	value = aws_instance.server.private_ip
}

output "worker_public_ips" {
	value = { for name, instance in aws_instance.workers : name => instance.public_ip }
}

output "worker_private_ips" {
	value = { for name, instance in aws_instance.workers : name => instance.private_ip }
}
