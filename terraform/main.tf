data "google_project" "project" {
}

module "networking" {
  source = "./modules/networking/"

  name = var.project_name
  region = var.region
}

module "kubernetes" {
  source = "./modules/kubernetes/"

  name = var.project_name
  region = var.region
  subnet_self_link = module.networking.subnet_self_link
  vpc_self_link = module.networking.vpc_self_link
}