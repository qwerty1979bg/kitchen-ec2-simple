output "public_dns" {
  value = "${aws_spot_instance_request.example.public_dns}"
}
