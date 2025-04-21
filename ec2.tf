resource "aws_instance" "my_terra_Instance" {
  count = 4
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"

  tags = {
    Name = "My-terra_Ins-${count.index+1}"
  }
}

# some changes for merging purpose
