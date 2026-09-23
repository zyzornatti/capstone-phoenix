output "server_public_ip" {
  description = "Public IP address of k3s-server."
  value       = module.compute.server_public_ip
}

output "server_private_ip" {
  description = "Private IP address of k3s-server for k3s joins."
  value       = module.compute.server_private_ip
}

output "worker_public_ips" {
  description = "Public IP addresses of worker nodes, keyed by node name."
  value       = module.compute.worker_public_ips
}

output "worker_private_ips" {
  description = "Private IP addresses of worker nodes, keyed by node name."
  value       = module.compute.worker_private_ips
}