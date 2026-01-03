variable "zone_id" {
  default = "Z09952091XFAJVW6ZEAR4"
}

variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "token" {}

variable "tools" {
  default = {
    vault = {
      instance_type = "t3.small"
    }
  }
}

