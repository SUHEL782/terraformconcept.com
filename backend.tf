# Create an S3 bucket to store Terraform state files
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-unique-bucket-name"

lifecycle {
    prevent_destroy = true  # Prevents accidental deletion of the bucket
  }
}

# Create a DynamoDB table for Terraform state locking
resource "aws_dynamodb_table" "backend_table" {
  name         = "terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "TerraformStateLockTable"
  }
}
