resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.env}-suhelkhanbucket"
  
 lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "suhelkhanbucket"
    Environment = var.env
  }
  
}