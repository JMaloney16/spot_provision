terraform {
  required_providers {
    spot = {
      source  = "rackerlabs/spot"
      version = "0.1.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.7.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.1"
    }
  }
}

provider "kubernetes" {
  host     = data.spot_kubeconfig.cloudspace.kubeconfigs[0].host
  token    = data.spot_kubeconfig.cloudspace.kubeconfigs[0].token
  insecure = data.spot_kubeconfig.cloudspace.kubeconfigs[0].insecure
}

provider "helm" {
  kubernetes {
    host     = data.spot_kubeconfig.cloudspace.kubeconfigs[0].host
    token    = data.spot_kubeconfig.cloudspace.kubeconfigs[0].token
    insecure = data.spot_kubeconfig.cloudspace.kubeconfigs[0].insecure
  }
}