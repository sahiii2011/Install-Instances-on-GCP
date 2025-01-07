resource "google_compute_network" "vpc_network" {
  project                 = "red-abstraction-446113-u1"
  name                    = "vpc-network1"
  auto_create_subnetworks = false
  mtu                     = 1460
}
# creating subnetwork

resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = "subnetwork1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  project       =  "red-abstraction-446113-u1"
  network       = google_compute_network.vpc_network.id
  secondary_ip_range {
    range_name    = "tf-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
  depends_on = [google_compute_network.vpc_network]
}


