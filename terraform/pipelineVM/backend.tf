terraform {
  backend "remote" {
    organization = "internship_learning"
    workspaces {
      name = "capstone_pipelinevm"
    }
  }
}