#===================================================================================================
#                                       
#===================================================================================================
resource "rancher2_cluster_v2" "rancher_cluster" {
  name                                     = var.cluster_name
  kubernetes_version                       = var.kubernetes_version
  enable_network_policy                    = false
  default_cluster_role_for_project_members = "user"
  rke_config {
    machine_global_config = <<EOF
enable:
  - coredns
  - local-storage
  - metrics-server
  - nginx-ingress-controller
disable:
  - servicelb
  - traefik
EOF
  }
}
