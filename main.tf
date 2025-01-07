module "compute"{
    source = "./compute"
}

module "network"{
    source = "./network"
}

module "firewall"{
    source = "./firewall"
}