resource "aws_iam_role_policy" "iam_role_policy" {
  name_prefix = var.name_prefix
  name        = var.name
  role        = var.role
  policy      = var.policy
}