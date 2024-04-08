variable "region" {
  description = "The AWS region to deploy into."
  default     = "us-east-1"
}

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
}

variable "app_name" {
  description = "The name of the application."
  type        = string
}

variable "docker_image" {
  description = "The Docker image for the app."
  type        = string
}

variable "container_name" {
  description = "The name of the container in the task definition."
  type        = string
}

variable "container_port" {
  description = "The port that the container will serve the app on."
  type        = number
  default     = 8080
}

variable "host_port" {
  description = "The port on the host that forwards to the container port."
  type        = number
  default     = 8080
}

variable "desired_count" {
  description = "The number of instances of the task definition to place and keep running."
  type        = number
  default     = 1
}

variable "cpu" {
  description = "The number of CPU units to assign to each task."
  default     = "256"
}

variable "memory" {
  description = "The amount of memory (in MiB) to assign to each task."
  default     = "512"
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the service."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the service."
  type        = list(string)
}
