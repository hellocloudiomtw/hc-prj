resource "aws_iam_user" "vault_root" {
  name = "vault-root"
  path = "/"

  tags = {
    Name = "vault-root"
  }
}

resource "aws_iam_access_key" "vault_root" {
  user = aws_iam_user.vault_root.name
}

data "aws_iam_policy_document" "vault_root" {
  statement {
    effect    = "Allow"
    actions   = [
        "iam:AttachUserPolicy",
        "iam:CreateUser",
        "iam:CreateAccessKey",
        "iam:DeleteUser",
        "iam:DeleteAccessKey",
        "iam:DeleteUserPolicy",
        "iam:DetachUserPolicy",
        "iam:GetUser",
        "iam:ListAccessKeys",
        "iam:ListAttachedUserPolicies",
        "iam:ListGroupsForUser",
        "iam:ListUserPolicies",
        "iam:PutUserPolicy",
        "iam:AddUserToGroup",
        "iam:RemoveUserFromGroup"
        ]
    resources = [
    "arn:aws:iam::823209788473:user/vault-*"
        ]
  }
}

resource "aws_iam_user_policy" "vault_root" {
  name   = "vault-root-policy"
  user   = aws_iam_user.vault_root.name
  policy = data.aws_iam_policy_document.vault_root.json
}