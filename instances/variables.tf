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
  default = "ap-southeast-2"
}
variable "key_name" {}
variable "instance_type" {
  default = "t2.small"
}
# Amazon Linux AMI
# Most recent as of 2018-08-08
variable "amis" {
  default = {
    ap-southeast-1 = "ami-68097514"
    ap-southwest-2 = "ami-942dd1f6"
  }
}
#
# From other modules
#
variable "public_subnet_id" {}
variable "bastion_ssh_sg_id" {}
variable "private_subnet_id" {}
variable "ssh_from_bastion_sg_id" {}
variable "web_access_from_nat_sg_id" {}
