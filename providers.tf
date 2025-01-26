terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "local" {}  # Local state management (simplified setup)
}

provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

