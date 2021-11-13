resource "google_compute_instance" "test-instance" {
  name         = "test-instance"
  machine_type = "e2-micro"
  project      = var.project_id
  region       = var.region
  zone         = var.defautl_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "vpc-shared-rmazelier-dev"
  }
}
