# provider.tf
terraform {
  required_providers {
    scm = {
      source  = "PaloAltoNetworks/scm"
      version = "1.0.9"
    }
  }
}

provider "scm" {
  # Configuration options
}
