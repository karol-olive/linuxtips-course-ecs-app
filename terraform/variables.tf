variable "region" {}

variable "cluster_name" {}

variable "service_name" {}

variable "service_port" {}

variable "service_cpu" {}

variable "service_memory" {}

variable "service_healthcheck" {}

variable "service_launch_type" {}

variable "container_image" {}

variable "service_hosts" {}

variable "service_task_count" {}

variable "ssm_vpc_id" {}

variable "ssm_listener" {}

variable "ssm_private_subnet_1a" {}

variable "ssm_private_subnet_1b" {}

variable "ssm_private_subnet_1c" {}

variable "ssm_alb" {}

variable "envrionment_variables" {}

variable "capabilities" {}

variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

# CPU Autoscaling out

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}

# CPU Autoscaling in

variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_periods" {}

variable "scale_in_cooldown" {}

# CPU Tracking Autoscaling

variable "scale_tracking_cpu" {}

# Trancking Requests Autoscaling

variable "scale_tracking_requests" {}

