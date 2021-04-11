# Demostration of pass agruments in module using variable
module "terraform-module" {
  source = "./terraform-modules-ec2/"
    region                     = "${var.region}"
    ami_id                     = "${var.ami_id}"
    instance_type              = "${var.instance_type}"
    tag                        = "${var.tag}"

}

# # Demostration of pass agruments in module
# module "module-example" {
#   source = "github.com/Patelvijaykumar/terraform-aws-instance-template.git"
#
#     region                     = "us-east-1"
#     ami_id                     = "ami-035b3c7efe6d061d5"
#     instance_type              = "t2.micro"
#     tag                        = "module example"
#
# }

output "public-ip" {
  value = "${module.terraform-module.instance_ip}"
}


