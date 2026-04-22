resource "aws_cloudwatch_metric_alarm" "ecs_cpu_high" {
  alarm_name          = "ecs-cpu-high"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = 60
  statistic           = "Average"
  threshold           = 70

  alarm_actions = [aws_sns_topic.alerts.arn]

  dimensions = {
    ClusterName = "devops-cluster"
    ServiceName = "devops-service"
  }

  alarm_description = "Alerta cuando CPU > 70%"
}