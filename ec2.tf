resource "aws_eip" "eip" {
  domain   = "vpc"
}

resource "aws_instance" "bastion" {
  ami                    = "ami-04e601abe3e1a910f" 
  instance_type          = "t2.micro" 
  subnet_id              = aws_subnet.my_first_public_subnet.id 
  vpc_security_group_ids = [aws_security_group.ssh_from_anywhere.id]
  associate_public_ip_address = true
  key_name               = aws_key_pair.tf-key-pair.id

  user_data = <<-EOF
                #!/bin/bash
                echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ubuntu/private_key.pem
                chmod 400 private_key.pem
                EOF

  tags = {
    Name = "Bastion"
  }
}


resource "aws_instance" "application" {
  ami                    = "ami-04e601abe3e1a910f" 
  instance_type          = "t2.micro" 
  subnet_id              = aws_subnet.my_first_private_subnet.id 
  vpc_security_group_ids        = [aws_security_group.ssh_and_port3000_from_vpc.id]
  key_name               = aws_key_pair.tf-key-pair.id


  tags = {
    Name = "Application"
  }
}