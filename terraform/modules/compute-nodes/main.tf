resource "google_compute_instance" "proxysql" {
  count        = 2
  name         = "proxysql-${count.index}"
  machine_type = var.compute_instance_types["proxysql"]
  zone         = element(var.zones, count.index)

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
    }
  }

  network_interface {
    network    = var.network
    subnetwork = element(var.subnet_names, count.index)
  }
}

resource "google_compute_instance" "orchestrator" {
  name         = "orchestrator"
  machine_type = var.orchestrator_instance_type
  zone         = var.zones[2]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnet_names[2]
  }
}