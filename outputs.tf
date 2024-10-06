output "kubeconfig" {
  value = data.spot_kubeconfig.cloudspace.raw
}

output "kubeconfig_host" {
  value = data.spot_kubeconfig.cloudspace.kubeconfigs[0].host
}

output "kubeconfig_token" {
  value     = data.spot_kubeconfig.cloudspace.kubeconfigs[0].token
  sensitive = true
}

output "kubeconfig_insecure" {
  value = data.spot_kubeconfig.cloudspace.kubeconfigs[0].insecure
}