terraform {
  required_version = ">= 0.13.0"
  required_providers {
    twingate = {
      source  = "Twingate/twingate"
      version = "3.3.2"
    }
  }
}

provider "twingate" {
  api_token = var.TWINGATE_API_TOKEN
  network   = "jw405"
}
