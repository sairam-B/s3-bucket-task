resource "aws_iam_user" "sai" {
  name = var.iam_user_s3_read
}

resource "aws_iam_user" "sai" {
  name = var.iam_user_s3_read_write
}
