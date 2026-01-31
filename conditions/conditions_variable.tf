variable "ami_id" {
  type    = string
  default = "ami-0532be01f26a3de55"
}
variable "instance_size" {
  type    = string
  default = "t2.micro"
}

variable "ingress_from_port" {
  type    = number
  default = 22
}

variable "ingress_to_port" {
  type    = number
  default = 22
}

variable "egress_from_port" {
  type    = number
  default = 0
}

variable "egress_in_port" {
  type    = number
  default = 0
}

variable "ingress_cidr" {
  default = ["0.0.0.0/0"]
}

variable "tags_Name"{
  default="Reshwanth"
}

variable "tags_environment"{
 // default="Dev"
}
