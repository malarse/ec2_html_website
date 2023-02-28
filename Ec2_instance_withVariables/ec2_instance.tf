resource "aws_instance" "web2" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = var.subnet
  security_groups = [aws_security_group.new_sg.id]
  #subnet_id = element(aws_subnet.public.*.id,count.index )
  user_data = file("install_httpd.sh")
  tags = {
    Name="instance2"
    env="dev"
    creator="Malarvizhi"
  }
}