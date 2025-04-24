variable "ami_id" {
    default = "ami-00a929b66ed6e0de6"
  
}

variable "sg_id" {
  
}

variable "instance_type" {
    default = "t3.micro"
    validation {
      condition = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
      error_message = "valid values for instance type are: t3.small t3.medium t3.micro"

    }
  
}

variable "tags" {
    default = {}
  
}