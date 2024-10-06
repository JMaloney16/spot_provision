resource "spot_cloudspace" "cloudspace" {
  cloudspace_name  = var.inst_name
  region           = var.inst_region
  hacontrol_plane  = var.inst_hacontrol_plane
  wait_until_ready = var.inst_wait_until_ready
  deployment_type  = "gen2"
}

resource "spot_spotnodepool" "node_pool" {
  cloudspace_name = resource.spot_cloudspace.cloudspace.cloudspace_name
  server_class    = var.inst_pool_class
  bid_price       = var.inst_bid_price

  desired_server_count = var.inst_node_count
}

data "spot_kubeconfig" "cloudspace" {
  cloudspace_name = resource.spot_cloudspace.cloudspace.name
}