terraform {
    required_providers {
    twingate = {
        source = "Twingate/twingate"
        version = "3.0.4"
        }
    }
        cloud {
        organization = "soniiit-net"

        workspaces {
            name = "twingate"
        }
    }
}

variable "tg_api_token" {
    type = string
    sensitive = true
}

provider "twingate" {
    api_token = var.tg_api_token
    network   = "soniiit"
}