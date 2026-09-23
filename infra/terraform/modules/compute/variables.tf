@@
variable "name" {
	type = string
}

variable "ami_id" {
	type = string
}

variable "instance_type" {
	type = string
}

variable "key_name" {
	type = string
}

variable "subnet_id" {
	type = string
}

variable "server_security_group_ids" {
	type = list(string)
}

variable "worker_security_group_ids" {
	type = list(string)
}

variable "worker_count" {
	type = number
}

variable "root_volume_size" {
	type = number
}
