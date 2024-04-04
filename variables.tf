variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "name" {
  type    = string
  default = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "public_acl" {
  type = bool
}

variable "public_policy" {
  type = bool
}