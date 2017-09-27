resource "aws_s3_bucket" "state-storage" {
  bucket = "${var.bucket["name"]}"
  acl    = "private"

  versioning {
    enabled = true
  }
}
