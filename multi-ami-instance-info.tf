resource "aws_instance" "instance1" {
  ami                     = "${var.instance1_ami}"
  instance_type           = "${var.instance1_type}"
  count = "${var.count1}"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.security_group.id]
  
  key_name = "${var.key_name}"

tags = {
      Name = "${var.instance1_name}"
}
}


resource "aws_instance" "instance2" {
  ami                     = "${var.instance2_ami}"
  instance_type           = "${var.instance2_type}"
  count = "${var.count2}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = [aws_security_group.security_group.id]
  subnet_id              = aws_subnet.private.id

tags = {
     Name = "${var.instance2_name}"
}
}

