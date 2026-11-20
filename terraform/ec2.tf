resource "aws_instance" "web_server" {
  ami                    = "ami-0109d2b556bd3d7e1"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = "travelmemory-key"
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "travelmemory-web"
  }
}

resource "aws_instance" "db_server" {
  ami                    = "ami-0109d2b556bd3d7e1"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet.id
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  key_name               = "travelmemory-key"
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "travelmemory-db"
  }
}
