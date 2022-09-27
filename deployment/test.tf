resource "aws_security_group" "stag_sg_mnps_dashboard_euc1" {
  provider    = aws.eu-central-1

  name        = "stag_sg_mnps_dashboard_euc1"
  description = "Allow inbound traffic for mnps dashboard"
  vpc_id      = data.aws_vpc.eu-central-1-vpc.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    BillingTeam = "ctooffice"
    Team        = "ctooffice"
    Name        = "stag_sg_mnps_dashboard_euc1"
  }
}