resource "google_compute_global_address" "static_ip" {
  name = var.static_ip_name
}

resource "google_compute_backend_service" "backend" {
  name                  = var.backend_service_name
  load_balancing_scheme = "EXTERNAL"
  backend {
    group = var.instance_group
  }
  health_checks = [google_compute_health_check.default.id]
}

resource "google_compute_url_map" "url_map" {
  name            = var.url_map_name
  default_service = google_compute_backend_service.backend.self_link
}

resource "google_compute_target_http_proxy" "http_proxy" {
  name   = var.http_proxy_name
  url_map = google_compute_url_map.url_map.self_link
}

resource "google_compute_global_forwarding_rule" "http_forwarding_rule" {
  name       = var.forwarding_rule_name
  target     = google_compute_target_http_proxy.http_proxy.self_link
  port_range = "80"
  ip_address = google_compute_global_address.static_ip.address
}

resource "google_compute_health_check" "default" {
  name               = var.health_check_name
  check_interval_sec = 10
  timeout_sec        = 5
  healthy_threshold  = 2
  unhealthy_threshold = 2

  http_health_check {
    request_path = "/"
    port         = 80
  }
}