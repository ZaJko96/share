provider "aws" {
  region = "us-east-1"
  access_key = "AKIAWTLZRDCZ5GP7TOTG"
  secret_key = "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"
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
