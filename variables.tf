variable "cluster_name" {
  description = "The name of the Rancher cluster on the management server"
  default     = "rancher-cluster-on-management-server"
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to deploy"
  default     = "v1.26.15+rke2r1"
}

variable "rancher_api" {
  default = "/production/rancher-puffersoft/url"
}
variable "rancher_token" {
  default = "/production/rancher-puffersoft/token-key"
}
# variable "s3_bucket_name" {
#   default = "waleed-bkt"
# }
# variable "key_file_s3bkt" {
#   default = "terraform.tfstate"

# }