# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "us-gcp-ame-its-23a8a-sbx-1"
  region  = "us-central1"
}
# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "hu22-anthos-product"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}