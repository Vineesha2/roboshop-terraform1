data "aws_security_group" "allow-all" {
  name = "allow-all"
}

output "sg" {
  value = data.aws_security_group.selected
}