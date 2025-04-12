variable "env" {
  description = "This is the environment for resources (e.g., dev, qa, prod)"
  type        = string
}

variable "aws_instance_type" {
  description = "This is the instance type for the EC2 resource (e.g., t2.micro, t2.small)"
  type        = string
}

variable "aws_instance_count" {
  description = "This is the number of EC2 instances to create (e.g., 1, 2, 3)"
  type        = number
}
