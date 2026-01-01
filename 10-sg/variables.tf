variable "project_name"{
    default= "roboshop"
}

variable "environment"{
    default="dev"
}

variable "sg_names"{
     default = [
        # databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # bastion
        "bastion",
        # frontend load balancer
        "ingress_alb",
        # eks cluster
        "eks_control_plane",
        "eks_nodes",
        "open_vpn"
    ]
}
