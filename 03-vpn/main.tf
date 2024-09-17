module "vpn" {
    source                  = "terraform-aws-modules/ec2-instance/aws"
    ami                     = data.aws_ami.centos8.id
    name                    = "${local.ec2_name}-vpn"
    instance_type           = "t2.small"
    vpc_security_group_ids  = [data.aws_ssm_parameter.vpn_sg_id.value]
    subnet_id               = data.aws_subnet.selected.id

    tags = merge(
        var.common_tags,
        {
            Component = "vpn"
        },
        {
            Name = "${local.ec2_name}-vpn"
        }
    )
}