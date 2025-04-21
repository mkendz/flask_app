output "ec2_public_ip" {
  value = aws_instance.flask_app.public_ip
}
