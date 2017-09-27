# tf-s3-store

## How to run

Initialize terraform.
Configure plan with aws creds and bucket name. 

```
$ export AWS_ACCESS_KEY_ID="..."
$ export AWS_SECRET_ACCESS_KEY="..."
$ export AWS_SESSION_TOKEN="..."
$ terraform init
$ cat > terraform.tfvars <<EOF
bucket = {
  name = ""
}
EOF
```
