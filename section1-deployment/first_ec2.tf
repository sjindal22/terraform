/*
provider "aws" {
    version = 2.70
    region = "us-east-1"
    access_key = "exampleKey"
    secret_key = "exampleSecret"
}
*/

resource "aws_instance" "firstEc2" {
    ami = "ami-0ac80df6eff0e70b5"
    instance_type = "t2.micro"
}
