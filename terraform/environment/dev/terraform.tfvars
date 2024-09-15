region = "eu-west-1"

cluster_name = "linuxtips-ecs-cluster"

container_image = "linuxtips-ecs-cluster/chip"

service_name = "chip"

service_port = 80

service_cpu = 256

service_memory = 512

service_launch_type = "EC2"

service_task_count = 3

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

ssm_listener = "/linuxtips-ecs/ecs/lb_listener"

ssm_private_subnet_1a = "/linuxtips-vpc/vpc/subnet_private_1a"

ssm_private_subnet_1b = "/linuxtips-vpc/vpc/subnet_private_1b"

ssm_private_subnet_1c = "/linuxtips-vpc/vpc/subnet_private_1c"

ssm_alb = "/linuxtips-ecs/ecs/lb_arn"

service_hosts = [
  "chip.linuxtips.demo"
]

envrionment_variables = [
  {
    name  = "FOO",
    value = "BAR"
  },
  {
    name  = "PING",
    value = "PONG"
  }
]

capabilities = ["EC2"]

service_healthcheck = {
  health_threshold   = 3
  unhealth_threshold = 10
  timeout            = 10
  interval           = 60
  matcher            = "200-399"
  path               = "/healthcheck"
  port               = 80
}

scale_type   = "requests_tracking"
task_minimum = "3"
task_maximum = "12"

# CPU Autoscaling out

scale_out_cpu_threshold       = 50
scale_out_adjustment          = 2
scale_out_comparison_operator = "GreaterThanOrEqualToThreshold"
scale_out_statistic           = "Average"
scale_out_period              = 60
scale_out_evaluation_periods  = 2
scale_out_cooldown            = 60


# CPU Autoscaling in

scale_in_cpu_threshold       = 30
scale_in_adjustment          = -1
scale_in_comparison_operator = "LessThanOrEqualToThreshold"
scale_in_statistic           = "Average"
scale_in_period              = 60
scale_in_evaluation_periods  = 2
scale_in_cooldown            = 60

# CPU Tracking Autoscaling

scale_tracking_cpu = 50

# Tracking Requests Autoscaling
scale_tracking_requests = 30
