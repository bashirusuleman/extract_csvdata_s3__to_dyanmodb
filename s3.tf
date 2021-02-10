resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucketname
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "CSV Host Bucket"
    Environment = "Dev"
  }
}