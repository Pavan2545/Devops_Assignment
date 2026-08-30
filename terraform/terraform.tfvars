project_name = "8byte-devops"

environment = "staging"

aws_region = "ap-south-1"

vpc_cidr = "10.0.0.0/16"

availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]

container_port   = 8080
container_cpu    = 256
container_memory = 512
desired_count    = 2

database_name     = "appdb"
database_username = "appuser"