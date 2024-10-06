Rackspace Spot Provisioning Terraform Module
===========

A terraform module to provide a Rackspace Spot cloudspace and node pool.

Currently limited to provisioning a single type of node.

Module Input Variables
----------------------

- `inst_name` - The name of the cloudspace to create.
- `inst_pool_class` - The node type to request.
- `inst_node_count` - The number of nodes to request.
- `inst_bid_price` - The maximum bid amount per node.

Usage
-----

```hcl
module "demo" {
  source = "github.com/jmaloney16/spot_provision"

  inst_name       = "my_cloudspace"
  inst_pool_class = "gp.vs1.large-lon"
  inst_node_count = 1
  inst_bid_price  = 0.001
}
```

Outputs
=======

 - `kubeconfig` - Outputs the kubeconfig in a raw string format.
 - `kubeconfig_host` - Outputs the cloudspace host from the kubeconfig.
 - `kubeconfig_token` - Outputs the cloudspace token from the kubeconfig.
 - `kubeconfig_insecure` - Returns the insecure value from the kubeconfig.


Authors
=======

Jack Maloney
