terraform {
  backend "remote" {
    organization = "ut0mt8-org"
    workspaces {
      name = "tf-cloud-ex-gcp"
    }
  }
}
