resource "aws_iam_user" "user" {
  name = var.username

}

resource "aws_iam_user_login_profile" "user_pword" {
  user = aws_iam_user.user.name
 
  password_reset_required = true # Force the user to reset their password on first login
  }

resource "aws_iam_user_policy" "console_access" {
  name   = var.policy
  user   = aws_iam_user.user.name
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "sts:AssumeRole",
      "Resource": "*"
    }
  ]
}
EOF
}



output "password1" {
  value = aws_iam_user_login_profile.user_pword.password
}
