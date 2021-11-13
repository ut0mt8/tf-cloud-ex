resource "google_compute_instance" "test-instance" {
  name         = "test-instance"
  machine_type = "e2-micro"
  project      = var.project
  region       = var.region
  zone         = var.default_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "vpc-shared-rmazelier-dev"
  }
}
