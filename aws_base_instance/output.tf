output "ssh_host_ip" {
  value = aws_instance.ssh_host.public_ip
}

output "ssh_host_subnet_id" {
  value = aws_instance.ssh_host.subnet_id
}

output "ssh_host_instance_id" {
  value = aws_instance.ssh_host.id
}

output "ssh_host_instance_type" {
  value = aws_instance.ssh_host.instance_type
}

output "ssh_host_security_group" {
  value = aws_instance.ssh_host.security_groups
}

output "ssh_host_availability_zone" {
  value = aws_instance.ssh_host.availability_zone
}

output "ssh_host_ami" {
  value = aws_instance.ssh_host.ami
}