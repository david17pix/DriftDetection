provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "non_compliant_example" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (ejemplo)
  instance_type = "t3.small"

  tags = {
    Name = "non-compliant-instance"
  }
}
