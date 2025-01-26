# Data source to check if the Organizational Unit already exists
data "aws_organizations_organizational_unit" "dev" {
  parent_id = "r-1p5x"
  name      = "Dev"
}

# Conditionally create the "Dev" OU if it does not exist
resource "aws_organizations_organizational_unit" "dev" {
  count     = length(data.aws_organizations_organizational_unit.dev.id) == 0 ? 1 : 0
  parent_id = "r-1p5x"
  name      = "Dev"
}

# Data source to check if the Organizational Unit already exists
data "aws_organizations_organizational_unit" "prod" {
  parent_id = "r-1p5x"
  name      = "Prod"
}

# Conditionally create the "Prod" OU if it does not exist
resource "aws_organizations_organizational_unit" "prod" {
  count     = length(data.aws_organizations_organizational_unit.prod.id) == 0 ? 1 : 0
  parent_id = "r-1p5x"
  name      = "Prod"
}

# Data source to check if the Organizational Unit already exists
data "aws_organizations_organizational_unit" "security" {
  parent_id = "r-1p5x"
  name      = "Security"
}

# Conditionally create the "Security" OU if it does not exist
resource "aws_organizations_organizational_unit" "security" {
  count     = length(data.aws_organizations_organizational_unit.security.id) == 0 ? 1 : 0
  parent_id = "r-1p5x"
  name      = "Security"
}
