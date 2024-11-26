# minikube provider(a bridge that allows terraform able to control specific services, in this case, minikube) and cluster resource 
terraform {
  required_providers {
    minikube = {
        source = "scott-the-programmer/minikube"
        version = "0.4.2"
    }
  }
}

# required provider
provider "minikube" {
  kubernetes_version = "v1.30.0"
}

# minikube cluster resource
resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "complete_devops_project"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
}

# terraform{
#     required_providers {
#       minikube = {
#         source = "scott-the-programmer/minikube"
#         version = "0.4.2"
#       }
#     }
# }

# provider "minikube" {
#     kubernetes_version = "v1.30.0"
# }

# resource "minikube_cluster" "minikube_docker" {
#     driver = "docker"
#     cluster_name = "complete-devops-project"
#     addons = [
#         "default-storageclass",
#         "storage-provisioner"
#     ]
# }