#--------------------------------------------------------------
# Instance
#--------------------------------------------------------------
resource "aws_instance" "main" {
    instance_type = "t2.micro"

    # Trusty 14.04
    ami = "ami-fce3c696"

    # This will create 1 instances
    count = 0
}
