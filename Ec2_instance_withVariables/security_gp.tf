resource "aws_security_group" "new_sg" {
  name="allow_http"
  description = "Allow http inbound traffic"
  vpc_id = "vpc-01b3ac10e877add2a"

  ingress {
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
