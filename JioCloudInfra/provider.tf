terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
backend "github"{
resource_group_name ="github"
storage_account_name= "githubstg "
container_name= "gitcon"
key = "dev.tfstate"
}
}

provider "azurerm" {
  features {}
subscription_id = "3be29ba2-b31c-4fbd-a7bb-c51bf50ef740"
}
