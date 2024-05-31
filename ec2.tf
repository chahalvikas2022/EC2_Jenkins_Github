resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a suitable AMI ID for your region
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  security_groups = [aws_security_group.allow_ssh_http.name]

  tags = {
    Name = "TerraformWebServer"
  }
}
