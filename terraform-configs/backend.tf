# initialize and apply configuration to start minikube - INITIALIZE will download required providers and setup the working directory while APPLY will start minkube in docker. the command, terraform plan will give us insight into what terraform will create.
# terraform needs a way to store the information about the resources it mananges. It does this using a state file. A local backend will be fine

terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}