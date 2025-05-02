terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source = "./modules/network"

  project_id = var.project_id
  region     = var.region
}

module "firewall" {
  source = "./modules/firewall"

  project_id = var.project_id
  network    = module.network.network_name
}

module "compute_nodes" {
  source = "./modules/compute-nodes"

  project_id = var.project_id
  region     = var.region
  network    = module.network.network_name
}

module "database" {
  source = "./modules/database"

  project_id = var.project_id
  region     = var.region
  network    = module.network.network_name
}

module "security" {
  source = "./modules/security"

  project_id = var.project_id
  region     = var.region
}
