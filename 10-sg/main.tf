module "sg"{
    count = length(var.sg_names)
    source="git::https://github.com/SomeshwarSangaraju/terraform-aws-sg.git?ref=main"
    project_name=var.project_name
    environment=var.environment
    sg_name = var.sg_names[count.index]
    sg_description = "Created for ${var.sg_names[count.index]}"
    vpc_id =  local.vpc_id
    tags = merge(
        var.sg_tags,
        local.common_tags,
        {
            Name = "${local.common_name_suffix}-${var.sg_name}" # roboshop-dev-catalogue
        }
    )
}


