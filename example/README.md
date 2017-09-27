# example

This environment can be configured interactively.

```
$ terraform init

Initializing the backend...
bucket
  The name of the S3 bucket

  Enter a value: bsick-terraform-state

key
  The path to the state file inside the bucket

  Enter a value: example01

region
  The region of the S3 bucket.

  Enter a value: us-east-1
  
```

Or, it can be done non-interactively.

```
$ terraform init \
  -backend-config="bucket=bsick-terraform-state" \ 
  -backend-config="key=brad-sickles/example01" \
  -backend-config="region=us-east-1"
```
