provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASDAK5GLPXUXBHCHR"
  secret_key = "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"
}
resource "aws_eip"  "lb" {
   vpc    = true
}

output "eip" {
   value = aws_eip.lb
}
resource "aws_s3_bucket" "harish" {
  bucket = "harish-big-bucket"
}

output "mys3bucket" {
   value = aws_s3_bucket.harish
}