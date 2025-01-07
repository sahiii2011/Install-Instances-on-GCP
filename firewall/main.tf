resource "google_compute_firewall" "ssh-rule" {
  name = "vpc-network1-allow-ssh"
  network = "vpc-network1"
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  target_tags = ["vm-one"]
  source_ranges = ["0.0.0.0/0"]
}