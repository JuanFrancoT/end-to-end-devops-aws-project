resource "aws_sns_topic" "alerts" {
  name = "devops-alerts"
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.alerts.arn
  protocol  = "email"
  endpoint  = "jestebanfranco@outlook.com"
}
