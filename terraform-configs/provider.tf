# provision terraform kubernetes provider. This will pull connection details directly from the minikube cludter resource allowing terraform to manage kubernetes resources within minikube

provider "kubernetes" {
  host = minikube_cluster.minikube-docker.host // cluster api endpoint
  client_certificate = minikube_cluster.minikube_docker.client_certificate  // for secure authentication to the minikube cluster
  client_key = minikube_cluster.minikube_docker.client_key  // for secure authentication to the minikube cluster
  cluster_ca_certificate = minikube_cluster.minikube_docker.cluster_ca_certificate
}

