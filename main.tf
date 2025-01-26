provider "aws" {
  region = "us-east-1"  # Set your region
}

# Check if the Organizational Units already exist
data "aws_organizations_organizational_units" "existing_ous" {
  filter {
    name = "Dev"
  }
}

data "aws_organizations_organizational_units" "existing_prod" {
  filter {
    name = "Prod"
  }
}

data "aws_organizations_organizational_units" "existing_security" {
  filter {
    name = "Security"
  }
}

# Create Organizational Unit for Dev if it doesn't already exist
resource "aws_organizations_organizational_unit" "dev" {
  count     = length(data.aws_organizations_organizational_units.existing_ous.ids) == 0 ? 1 : 0
  parent_id = "r-1p5x"
  name      = "Dev"
}

# Create Organizational Unit for Prod if it doesn't already exist
resource "aws_organizations_organizational_unit" "prod" {
  count     = length(data.aws_organizations_organizational_units.existing_prod.ids) == 0 ? 1 : 0
  parent_id = "r-1p5x"
  name      = "Prod"
}

# Create Organizational Unit for Security if it doesn't already exist
resource "aws_organizations_organizational_unit" "security" {
  count     = length(data.aws_organizations_organizational_units.existing_security.ids) == 0 ? 1 : 0
  parent_id = "r-1p5x"
  name      = "Security"
}
