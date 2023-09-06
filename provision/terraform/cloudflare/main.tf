terraform {
  cloud {
    organization = "mrmarble"

    workspaces {
      name = "home-cloudflare"
    }
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.14.0"
    }
    sops = {
      source  = "carlpett/sops"
      version = "0.7.2"
    }
  }
}

data "sops_file" "cloudflare_secrets" {
  source_file = "secret.sops.yaml"
}

data "cloudflare_zone" "domain" {
  name = data.sops_file.cloudflare_secrets.data["cloudflare_domain"]
}
