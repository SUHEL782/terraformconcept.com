resource "aws_dynamodb_table" "my_dynamodb_table" {
  name         = "${var.env}-suhelkhandynamodb"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "${var.env}-suhelkhandynamodb"
    Environment = var.env
  }
  
}