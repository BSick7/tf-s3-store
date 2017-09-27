variable "aws" {
  description = "Configuration of AWS provider"
  type        = "map"

  default = {
    region     = "us-east-1"
    access-key = ""
    secret-key = ""
    token      = ""
  }
}

variable "bucket" {
  description = "Configuration of s3 bucket"
  type        = "map"

  default = {
    name = ""
  }
}
