variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with name"
}

variable "name" {
  description = "The name of the role policy. If omitted, Terraform will assign a random, unique name."
}


variable "policy" {
  description = "The inline policy document. This is a JSON formatted string."
}

variable "role" {
  description = "The IAM role to attach to the policy."
}