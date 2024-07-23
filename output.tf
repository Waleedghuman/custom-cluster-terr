output "master_node_command" {
  value = nonsensitive("${rancher2_cluster_v2.rancher_cluster.cluster_registration_token[0].insecure_node_command} --etcd --controlplane --worker")
}

output "worker_node_command" {
  value = nonsensitive("${rancher2_cluster_v2.rancher_cluster.cluster_registration_token[0].insecure_node_command} --worker")
}