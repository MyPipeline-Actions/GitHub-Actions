resource "aws_instance" "github_ec2" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "github-actions-ec2"
    Environment = "Dev"
  }
}