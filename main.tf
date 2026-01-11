terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.15.0"
    }
  }
}

provider "google" {
  credentials = "./terraform-key.json"
  project     = "dogwood-wharf-456103-t1"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "dogwood-wharf-456103-t1-terra-bucket"
  location      = "US"
  force_destroy = true



  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}