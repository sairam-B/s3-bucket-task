resource "aws_iam_user_policy" "sai_ro" {
  name = "sai-policy-s3"
  user = aws_iam_user.sai.name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : ["s3:ListBucket"],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_access}"]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:GetObject",
        ],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_access}/*"]
      }
    ]
  })
}

resource "aws_iam_user_policy" "sai_rw" {
  name = "suresh-policy-s3"
  user = aws_iam_user.sai.name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : ["s3:ListBucket"],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_write_access}"]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:GetObject",
        ],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_write_access}/*"]
      }
    ]
  })
}

