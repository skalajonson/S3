provider "aws" {
    access_key = "AKIAQGL7X2SFPAF5ROUO"
    secret_key = "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"
    region = "eu-north-1"
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "kakashka" 

  tags = {
    Name        = "My Terraform Bucket"
    Environment = "Production"
  }
}
resource "aws_s3_bucket_object" "my_folder" {
  bucket = "kakashka"
  key    = "files/"
  source = "files/lapka.txt"
}
resource "aws_s3_bucket_object" "my_object" {
  bucket = "kakashka"
  key    = "files/lapka.txt"
  source = "files/lapka.txt" 
}
output "presigned_url" {
  value = "https://kakashka.s3.eu-north-1.amazonaws.com/files/lapka.txt"
}

