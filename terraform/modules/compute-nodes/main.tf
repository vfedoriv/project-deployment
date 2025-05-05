resource "google_compute_instance_group_manager" "mig_a" {
  name               = "mig-a"
  base_instance_name = "primary-instance"
  zone               = var.zone_a
  instance_template  = google_compute_instance_template.primary_template.self_link
  target_size        = var.target_size
  stateful_disk {
    device_name = "primary-disk"
    source      = google_compute_disk.primary_disk.id
  }
}

resource "google_compute_instance_group_manager" "mig_b" {
  name               = "mig-b"
  base_instance_name = "failover-instance"
  zone               = var.zone_b
  instance_template  = google_compute_instance_template.failover_template.self_link
  target_size        = var.target_size
  stateful_disk {
    device_name = "failover-disk"
    source      = google_compute_disk.failover_disk.id
  }
}

resource "google_compute_instance_template" "primary_template" {
  name           = "primary-template"
  machine_type   = var.machine_type
  disk {
    source      = google_compute_disk.primary_disk.id
    auto_delete = false
  }
  network_interface {
    network = var.network_id
  }
}

resource "google_compute_instance_template" "failover_template" {
  name           = "failover-template"
  machine_type   = var.machine_type
  disk {
    source      = google_compute_disk.failover_disk.id
    auto_delete = false
  }
  network_interface {
    network = var.network_id
  }
}