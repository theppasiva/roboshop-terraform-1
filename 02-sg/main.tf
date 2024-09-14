module "mongodb" {
    source = "../../terraform-aws-security-group-1"
    project_name = var.project_name
    environment = var.environment
    sg_description = "SG for mongodb"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    #vpc_id = "vpc-0d4deffaa6c175a3b"
    sg_name = "mongodb"
    #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "catalogue" {
    source = "../../terraform-aws-security-group-1"
    project_name = var.project_name
    environment = var.environment
    sg_description = "SG for catalogue"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    #vpc_id = "vpc-0d4deffaa6c175a3b"
    sg_name = "catalogue"
    #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

