resource "aws_s3_bucket_policy" "alb_log_policy" {
  bucket = data.aws_s3_bucket.existing.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::my-existing-s3-bucket/AWSLogs/your-account-id/*"
    }
  ]
}
POLICY
}
