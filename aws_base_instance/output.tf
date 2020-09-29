##############################################################################
# Outputs File
#
# Expose the outputs you want your users to see after a successful
# `terraform apply` or `terraform output` command. You can add your own text
# and include any data from the state file. Outputs are sorted alphabetically;
# use an underscore _ to move things to the bottom.

output "subnet_id" {
  value = aws_instance.ssh_host.subnet_id
}

output "instance_id" {
  value = aws_instance.ssh_host.id
}

output "instance_type" {
  value = aws_instance.ssh_host.instance_type
}

output "security_group" {
  value = aws_instance.ssh_host.security_groups
}

output "availability_zone" {
  value = aws_instance.ssh_host.availability_zone
}

output "ami" {
  value = aws_instance.ssh_host.ami
}

output "_public_ip" {
  #value = aws_instance.ssh_host.public_ip
  value = "http://${aws_instance.ssh_host.public_ip}"
}