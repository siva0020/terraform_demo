provider "aws" {
   region     = "ap-south-1"
}

resource "aws_instance" "tomcat" {
  ami           = "ami-0f5ee92e2d63afc18"  # Amazon Linux 2 AMI ID
  instance_type = "t2.micro"                # Set your desired instance type

  tags = {
    Name = "tomcat-instance"
  }

  key_name      = "sftp"  # Set your key pair name
       
  # Add other configuration as needed, such as VPC settings, subnet, etc.
}
