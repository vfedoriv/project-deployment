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
}

module "compute_nodes" {
  source  = "./modules/compute-nodes"
  network = module.network.network_id
}

module "firewall" {
  source  = "./modules/firewall"
  network = module.network.network_id
}

module "security" {
  source = "./modules/security"
}

module "database" {
  source  = "./modules/database"
  network = module.network.network_id
}