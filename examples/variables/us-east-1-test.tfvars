aws_account_id              =   "399188165922"
aws_region                  =   "us-east-1"

vpc_name                    =   "platform-vpc"
private_subnet_name         =   "platform-vpc-private-us-east-1*"
public_subnet_name          =   "platform-vpc-public-us-east-1*"
app_image                   =   "adongy/hostname-docker:latest"
app_port                    =   3000
app_count                   =   2
fargate_cpu                 =   "256"
fargate_memory              =   "512"
