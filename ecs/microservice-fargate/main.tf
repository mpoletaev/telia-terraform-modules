# ------------------------------------------------------------------------------
# Resources
# ------------------------------------------------------------------------------
module "service" {
  source = "../service"

  prefix                                    = "${var.prefix}"
  vpc_id                                    = "${var.vpc_id}"
  cluster_id                                = "${var.cluster_id}"
  cluster_role_id                           = "${var.cluster_role_id}"
  task_container_count                      = "${var.task_container_count}"
  task_definition_cpu                       = "${var.task_definition_cpu}"
  task_definition_ram                       = "${var.task_definition_ram}"
  task_definition_image                     = "${var.task_definition_image}"
  task_definition_command                   = "${var.task_definition_command}"
  task_definition_environment               = "${var.task_definition_environment}"
  task_definition_environment_count         = "${var.task_definition_environment_count}"
  task_definition_health_check_grace_period = "${var.task_definition_health_check_grace_period}"
  health                                    = "${var.health}"

  launch_type = "FARGATE"
  target {
    protocol      = "${var.target["protocol"]}"
    port          = "${var.target["port"]}"
    load_balancer = "${var.target["load_balancer"]}"
  }

  tags = "${var.tags}"
}