provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

#resource "aws_instance" "example" {
resource "aws_spot_instance_request" "example" {
  ami                  = "${var.ami}"
  instance_type        = "${var.instance_type}"
  key_name             = "${var.key_name}"
  wait_for_fulfillment = true
  spot_type            = "one-time"

  root_block_device {
    #    device_name           = "/dev/xvda"
    volume_type           = "standard"
    delete_on_termination = true
  }
}
