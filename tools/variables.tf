variable "zone_id" {
  default = "Z09952091XFAJVW6ZEAR4"
}

variable "ami" {
  default = "ami-09a8de5de0fa65153"
}

variable "token" {}

variable "tools" {
  default = {
    vault = {
      instance_type = "t3.small"
    }
  }
}

