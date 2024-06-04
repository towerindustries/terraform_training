# Phase 3 Workbook Answers

## AWS CLI Image Search
```
aws ec2 describe-images \
    --region us-east-1 \
    --filters "Name=name,Values=RHEL-8.7*" "Name=virtualization-type,Values=hvm" "Name=architecture,Values=x86_64"

```

## Data.tf
```
data "aws_ami" "latest_rhel8" {
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-8.7*"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
  filter {
    name   = "state"
    values = ["available"]
  }
}
```

