provider "aws" {
  region = "eu-west-2" 
}

resource "aws_s3_bucket" "tf_test_bucket" {
  bucket = "tf-test-bucket-zubayda" 
}

# resource "aws_s3_bucket_acl" "tf_test_bucket_acl" {
#   bucket = aws_s3_bucket.tf_test_bucket.id
#   acl    = "private"
# }

resource "aws_s3_bucket_versioning" "tf_test_bucket_versioning" {
  bucket = aws_s3_bucket.tf_test_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "upload_folder" {
  bucket = aws_s3_bucket.tf_test_bucket.bucket
  key    = "uploads/"
  source = "/dev/null"
}


