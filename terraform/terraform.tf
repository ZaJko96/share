provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    key_name = "test2"
    vpc_security_group_ids = ["sg-035dc124af3530c17"]
    tags = {
      "Name" = "test"
    }
  
}
