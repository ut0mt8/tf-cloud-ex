resource "google_compute_instance" "test-instance" {
 name         = "test-instance"
 machine_type = "e2-micro"

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-11"
   }
 }

 network_interface {
   network = "vpc-shared-rmazelier-dev"
 }
}
