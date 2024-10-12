provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
resource "aws_lightsail_instance" "test-server" {
  name              = "test-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  key_pair_name     = "aws-Lightsail"
  user_data         = file("script.sh")
  tags = {
    Name = "test-server"
    env  = "dev"
    Team = "Infra"
    Owner = "DevOps"
  }
}