# Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file
# except in compliance with the License. A copy of the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is distributed on an "AS IS"
# BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under the License.
variable "region" {
  default = "us-west-2"
}
variable "ip_range" {
  default = "10.0.0.0/0" # Change to your IP Range!
}
variable "availability_zones" {
  # No spaces allowed between az names!
  default = ["ap-southeast-2a","ap-southeast-2b","ap-southeast-2c"]
}
variable "key_name" {
  default = "Terminal"
}
variable "instance_type" {
  default = "t2.nano"
}
variable "asg_min" {
  default = "2"
}
variable "asg_max" {
  default = "3"
}
variable "asg_desired" {
  default = "2"
}
# Amazon Linux AMI
# Most recent as of 2018-08-08
variable "amis" {
  default = {
    ap-southeast-2 = "ami-942dd1f6"
    ap-southeast-1 = "ami-68097514"
  }
}
variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "10.0.10.0/16"
}
variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default = "10.0.10.0/24"
}
variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default = "10.0.20.0/24"
}
