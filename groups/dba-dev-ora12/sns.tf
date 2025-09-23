resource "aws_sns_topic" "dba_dev_ora12" {
  name = "dba_dev_ora12"
}

resource "aws_sns_topic_subscription" "dba_dev_ora12_system_Subscription" {
  topic_arn = aws_sns_topic.dba_dev_ora12.arn
  protocol  = "email"
  endpoint = local.linux_sns_email

  depends_on = [
    aws_sns_topic.dba_dev_ora12
  ]
}

resource "aws_sns_topic_subscription" "dba_dev_ora12_system_Subscriptionhttps" {
  topic_arn = aws_sns_topic.dba_dev_ora12.arn
  protocol  = "https"
  endpoint  = data.vault_generic_secret.sns_url.data["url"]

  depends_on = [
    aws_sns_topic.dba_dev_ora12
  ]
}
