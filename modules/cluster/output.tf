output "cluster_name" {
  value = aws_ecs_cluster.main.id
}

output "sg" {
  value = aws_security_group.main.id
}

output "alb_arn" {
  value = aws_alb.main.arn
}

output "nlb_arn" {
  value = aws_alb.vpc_link.arn
}

output "listener_arn" {
  value = aws_alb_listener.main.arn
}