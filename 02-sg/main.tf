module "mongodb" {
    source = "../../terraform-aws-security-group-1"
    project_name = var.project_name
    environment = var.environment
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "mongodb"
}
