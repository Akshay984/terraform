output "instance_ip_addr" {
  value = aws_instance.ubuntu_1.public_ip
}

output "instance_ip_addr1" {
  value = aws_instance.ubuntu_1.private_ip
}

