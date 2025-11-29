resource "aws_instance" "app_server" {
  ami                    = var.app_ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  user_data = <<EOF
#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl enable nginx
echo "<h1>Welcome to App Server - Public Tier</h1>" > /usr/share/nginx/html/index.html
systemctl restart nginx
EOF

  tags = {
    Name = "${var.project_name}-app-server"
  }
}
