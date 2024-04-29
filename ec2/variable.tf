variable "instance_type" {
  type = string
  description = "instance type of EC2"

  # validate allowed value is in list
  validation {
    condition = contains(["t2.micro", "t3.small"], var.instance_type)
    error_message = "Value not allow."
  }
}
