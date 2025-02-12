variable "stack_name" {
  type        = string
  description = "Name of the CloudFormation stack"
  default     = "oe-patterns-zulip"
}

variable "vpc_id" {
  type        = string
  description = "Optional: Specify the VPC ID. If not specified, a VPC will be created."
  default     = ""
}

variable "vpc_cidr" {
  type        = string
  description = "Optional: VPC IPv4 CIDR block if no VPC provided."
  default     = "10.0.0.0/16"
}

variable "vpc_nat_gateway_per_subnet" {
  type        = string
  description = "Optional: Set to 'true' to provision a NAT Gateway in each public subnet."
  default     = "false"
}

variable "vpc_private_subnet1_id" {
  type        = string
  description = "Optional: Specify Subnet ID for private subnet 1."
  default     = ""
}

variable "vpc_private_subnet1_cidr" {
  type        = string
  description = "Optional: VPC IPv4 CIDR block of private subnet 1 if no VPC provided."
  default     = "10.0.128.0/18"
}

variable "vpc_private_subnet2_id" {
  type        = string
  description = "Optional: Specify Subnet ID for private subnet 2."
  default     = ""
}

variable "vpc_private_subnet2_cidr" {
  type        = string
  description = "Optional: VPC IPv4 CIDR block of private subnet 2 if no VPC provided."
  default     = "10.0.192.0/18"
}

variable "vpc_public_subnet1_id" {
  type        = string
  description = "Optional: Specify Subnet ID for public subnet 1."
  default     = ""
}

variable "vpc_public_subnet1_cidr" {
  type        = string
  description = "Optional: VPC IPv4 CIDR block of public subnet 1 if no VPC provided."
  default     = "10.0.0.0/18"
}

variable "vpc_public_subnet2_id" {
  type        = string
  description = "Optional: Specify Subnet ID for public subnet 2."
  default     = ""
}

variable "vpc_public_subnet2_cidr" {
  type        = string
  description = "Optional: VPC IPv4 CIDR block of public subnet 2 if no VPC provided."
  default     = "10.0.64.0/18"
}

variable "dns_route53_hosted_zone_name" {
  type        = string
  description = "Required: Hosted Zone name (without trailing dot)."
}

variable "dns_hostname" {
  type        = string
  description = "Required: The hostname to access the service."
}

variable "assets_bucket_name" {
  type        = string
  description = "Optional: Name of the S3 bucket to store uploaded assets."
  default     = ""
}

variable "avatars_bucket_name" {
  type        = string
  description = "Optional: Name of the S3 bucket to store uploaded avatars."
  default     = ""
}

variable "ses_instance_user_access_key_serial" {
  type        = number
  description = "Optional: Incrementing triggers a rotation of the Instance User Access Key."
  default     = 1
}

variable "ses_create_domain_identity" {
  type        = string
  description = "Optional: If 'true', a SES Domain Identity is created."
  default     = "true"
}

variable "db_secret_arn" {
  type        = string
  description = "Optional: SecretsManager secret ARN for DB credentials. If empty, one is created."
  default     = ""
}

variable "db_backup_retention_period" {
  type        = number
  description = "Required: Number of days to retain automated DB backups."
  default     = 7
}

variable "db_instance_class" {
  type        = string
  description = "Required: DB instance class."
  default     = "db.t4g.medium"
}

variable "db_snapshot_identifier" {
  type        = string
  description = "Optional: RDS snapshot ARN from which to restore."
  default     = ""
}

variable "redis_cluster_cache_node_type" {
  type        = string
  description = "Required: Instance type for the Redis cluster nodes."
  default     = "cache.t3.micro"
}

variable "redis_cluster_num_cache_nodes" {
  type        = number
  description = "Required: Number of cache nodes in the cluster."
  default     = 1
}

variable "rabbitmq_secret_arn" {
  type        = string
  description = "Optional: Secrets Manager Secret ARN for RabbitMQ credentials."
  default     = ""
}

variable "rabbitmq_instance_class" {
  type        = string
  description = "Required: Instance class for the RabbitMQ broker."
  default     = "mq.t3.micro"
}

variable "admin_email" {
  type        = string
  description = "Optional: Email for the Zulip admin account."
  default     = ""
}

variable "giphy_api_key" {
  type        = string
  description = "Optional: GIPHY API Key."
  default     = ""
}

variable "sentry_dsn" {
  type        = string
  description = "Optional: Sentry DSN endpoint."
  default     = ""
}

variable "enable_incoming_email" {
  type        = string
  description = "Required: Enable incoming email support."
  default     = "true"
}

variable "enable_mobile_push_notifications" {
  type        = string
  description = "Required: Enable mobile push notifications."
  default     = "false"
}

variable "asg_instance_type" {
  type        = string
  description = "Required: EC2 instance type for the application ASG."
  default     = "t3.medium"
}

variable "asg_key_name" {
  type        = string
  description = "Optional: EC2 key pair name."
  default     = ""
}

variable "asg_reprovision_string" {
  type        = string
  description = "Optional: Forces re-provision when changed."
  default     = ""
}

variable "asg_desired_capacity" {
  type        = number
  description = "Required: Desired capacity of the ASG."
  default     = 1
}

variable "asg_max_size" {
  type        = number
  description = "Required: Max size of the ASG."
  default     = 2
}

variable "asg_min_size" {
  type        = number
  description = "Required: Min size of the ASG."
  default     = 1
}

variable "asg_disk_usage_alarm_threshold" {
  type        = number
  description = "Required: Alarm threshold for disk usage percentage."
  default     = 80
}

variable "alb_certificate_arn" {
  type        = string
  description = "Required: ACM Certificate ARN for HTTPS."
}

variable "alb_ingress_cidr" {
  type        = string
  description = "Required: CIDR range to allow ALB traffic."
}

variable "email_ingress_cidr" {
  type        = string
  description = "Required if incoming email is enabled. CIDR range for email ingress."
}
