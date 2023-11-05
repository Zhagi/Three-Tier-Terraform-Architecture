provider "aws" {
  region = "eu-west-2" # Choose the region that is best for you
}

resource "aws_s3_bucket" "tf_test_bucket" {
  bucket = "tf-test-bucket-zubayda" # Replace with your actual name or unique identifier
}

  # You can define other settings such as versioning in a separate resource block
  # due to deprecation.

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


