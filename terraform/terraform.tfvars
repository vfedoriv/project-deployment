project_id = "my-gcp-project"
region     = "us-central1"

network_name = "my-vpc-network"
subnet_names = ["subnet-a", "subnet-b", "subnet-c"]

firewall_rules = [
  {
    name        = "allow-internal"
    description = "Allow internal traffic"
    priority    = 1000
    direction   = "INGRESS"
    action      = "ALLOW"
    ranges      = ["10.0.0.0/16"]
    targets     = ["all"]
  }
]

compute_instance_types = {
  proxysql = "e2-medium",
  orchestrator = "e2-small"
}

database_instance_types = {
  source  = "db-n1-standard-2",
  replica = "db-n1-standard-2"
}

orchestrator_instance_type = "e2-small"
orchestrator_db_instance_type = "db-f1-micro"

disk_sizes = {
  source_db       = 100,
  replica_db      = 100,
  orchestrator_db = 10
}

backup_bucket_name = "my-backup-bucket"