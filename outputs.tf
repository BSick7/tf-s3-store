output "bucket" {
  value = {
    arn    = "${aws_s3_bucket.state-storage.arn}"
    name   = "${aws_s3_bucket.state-storage.bucket}"
    domain = "${aws_s3_bucket.state-storage.bucket_domain_name}"
  }
}
