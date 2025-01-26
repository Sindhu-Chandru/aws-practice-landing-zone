# Create an AWS Organization
resource "aws_organizations_organization" "main" {
  feature_set = "ALL"
}

# Create Organizational Units (OUs)
resource "aws_organizations_organizational_unit" "dev" {
  parent_id = aws_organizations_organization.main.id
  name      = "Dev"
}

resource "aws_organizations_organizational_unit" "prod" {
  parent_id = aws_organizations_organization.main.id
  name      = "Prod"
}

resource "aws_organizations_organizational_unit" "security" {
  parent_id = aws_organizations_organization.main.id
  name      = "Security"
}

