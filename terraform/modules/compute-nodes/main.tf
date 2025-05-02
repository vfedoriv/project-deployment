resource "google_compute_instance" "source_instance" {
  name         = "source-instance"
  machine_type = var.source_machine_type
  zone         = var.zone_a

  boot_disk {
    initialize_params {
      image = var.source_image
      size  = var.source_disk_size
      type  = "pd-ssd"
    }
  }

  network_interface {
    network    = var.network_id
    subnetwork = var.subnet_a_id
  }

  tags = ["source-instance"]
}

resource "google_compute_instance" "replica_instance" {
  name         = "replica-instance"
  machine_type = var.replica_machine_type
  zone         = var.zone_b

  boot_disk {
    initialize_params {
      image = var.replica_image
      size  = var.replica_disk_size
      type  = "pd-ssd"
    }
  }

  network_interface {
    network    = var.network_id
    subnetwork = var.subnet_b_id
  }

  tags = ["replica-instance"]
}