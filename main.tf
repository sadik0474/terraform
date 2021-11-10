
terraform {
  backend "gcs" {
      bucket = "terraform-backend1919"
      prefix = " terraform1"
  }
}
provider "google" {
credentials = "/Users/sadikmac/Desktop/terraform-dev/terraform_key.json"
project = "terraform1919"
region  = "us-central1"
zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
} 

resource "google_compute_network" "vpc_custom" {
  name                 = "vpc_custom"
  auto_create_subnetworks = true
}




