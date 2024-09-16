variable "user_name" {
    description = "IAM User Name"
    type = string
    default = "vault-admin"
}

variable "inline_po_name" {
    description = "Vault Policy Name"
    type = string
    default = "vault-admin-policy"
}

variable "aws_region" {
    description = "AWS Region"
    type = string
    default = "ap-southeast-1"
}