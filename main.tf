provider "aws" {
   region     = "ap-south-1"
   access_key = "AKIAYK2TEGV6LYSGHBE6"
   secret_key = "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"

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
