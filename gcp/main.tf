resource "google_compute_instance" "test-instance" {
  name         = "test-instance"
  machine_type = "e2-micro"
  project      = var.project
  zone         = var.default_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = "projects/rmazelier-admin/regions/europe-west1/subnetworks/vpc-shared-rmazelier-dev-subnet"
  }
}
