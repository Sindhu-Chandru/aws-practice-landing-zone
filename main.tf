# Create an AWS Organization
#resource "aws_organizations_organization" "main" {
#  feature_set = "ALL"
#}

# Create Organizational Units (OUs)
resource "aws_organizations_organizational_unit" "dev" {
  parent_id = "r-1p5x"
  name      = "Dev"
}

resource "aws_organizations_organizational_unit" "prod" {
  parent_id = "r-1p5x"
  name      = "Prod"
}

resource "aws_organizations_organizational_unit" "security" {
  parent_id = "r-1p5x"
  name      = "Security"
}

