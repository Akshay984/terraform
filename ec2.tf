
resource "aws_instance" "ubuntu_1" {
  ami           = "${var.ami_id}"
  instance_type = "${var.ami_type}"
  key_name = aws_key_pair.example.key_name
#  VPC 
  subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
# Security Group
   vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    associate_public_ip_address = true
 connection {
    type        = "ssh"
    user        = "${var.user_name}"
    private_key = file("${var.pri_key_path}")
    host        = self.public_ip
}

}

resource "aws_key_pair" "example" {
  key_name   = "example-key"
  public_key = file("${var.pub_key_path}")
}

