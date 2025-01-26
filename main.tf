# Create the "Dev" Organizational Unit
resource "aws_organizations_organizational_unit" "dev" {
  parent_id = "r-1p5x"
  name      = "Dev"
}

# Create the "Prod" Organizational Unit
resource "aws_organizations_organizational_unit" "prod" {
  parent_id = "r-1p5x"
  name      = "Prod"
}

# Create the "Security" Organizational Unit
resource "aws_organizations_organizational_unit" "security" {
  parent_id = "r-1p5x"
  name      = "Security"
}
