resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-unique-bucket-name"
    acl    = "private"
    
    versioning {
        enabled = true
    }
    
    lifecycle {
        prevent_destroy = true
    }
  
}