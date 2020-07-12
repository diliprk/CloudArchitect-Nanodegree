# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  shared_credentials_file = "/Users/dilip/.aws/creds"
  region  = "eu-central-1"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-05ca073a83ad2f28c"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07dd931f6881ed690"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#  ami           = "ami-05ca073a83ad2f28c"
#  count         = "2"
#  instance_type = "m4.large"
#  subnet_id     = "subnet-07dd931f6881ed690"
#  tags = {
#    Name = "Udacity M4"
#  }
#}
