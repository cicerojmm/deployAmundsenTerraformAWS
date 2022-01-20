service_name = "AMUNDSEN-STACK"
environment  = "dev"


instances_params = {
  amundsen = {
    keypair_name  = "debezium"
    subnet_id     = "subnet-fa1029b7"
    vpc_id        = "vpc-0e09b373"
    instance_type = "t3.xlarge"
    volume_size   = "50"
    volume_type   = "gp2"
  }
}

