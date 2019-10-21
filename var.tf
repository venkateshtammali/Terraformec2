variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-00eb20669e0990cb4"
    eu-west-3 = "ami-0652eb0db9b20aeaf"
    ap-south-1 = "ami-02913db388613c3e1"
}
}
