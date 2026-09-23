output "server_security_group_id" {
  value = aws_security_group.server.id
}

output "node_security_group_id" {
  value = aws_security_group.node.id
}