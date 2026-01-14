variable "zone_id" {
  default = "Z09952091XFAJVW6ZEAR4"
}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

variable "token" {}

variable "tools" {
  default = {
    vault = {
      instance_type = "t3.small"
    }
  }
}

