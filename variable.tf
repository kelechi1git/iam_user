variable "username" {
  type = string
  default = "kc"
  
}

variable "pword" {
  type = string
  sensitive = true
  
}


variable "policy" {
  type = string
  default = "pol"
  
}

variable "kword" {
  type = string
  sensitive = true
  
}