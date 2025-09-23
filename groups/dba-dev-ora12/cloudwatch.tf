resource "aws_cloudwatch_metric_alarm" "dba_dev_ora12_StatusCheckFailed" {
  alarm_name                = "${upper(var.environment)} - CRITICAL - dba-dev-ora12-StatusCheckFailed"
  evaluation_periods        = "1"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  metric_name               = "StatusCheckFailed"
  namespace                 = "AWS/EC2"
  period                    = "300"
  statistic                 = "Maximum"
  threshold                 = "1"
  alarm_description         = "This metric monitors StatusCheckFailed"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.dba_dev_ora12.arn]
  ok_actions                = [aws_sns_topic.dba_dev_ora12.arn]
  dimensions = {
    instance_id = aws_instance.dba_dev_ora12[0].id
  }
}
# --------------------------------------------------------------------------------------
resource "aws_cloudwatch_metric_alarm" "dba_dev_ora12_cpu95" {
  alarm_name                = "${upper(var.environment)} - CRITICAL - dba-dev-ora12 - CPUUtilization"
  evaluation_periods        = "1"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "300"
  statistic                 = "Maximum"
  threshold                 = "95"
  alarm_description         = "This metric monitors ec2 cpu utilization system"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.dba_dev_ora12.arn]
  ok_actions                = [aws_sns_topic.dba_dev_ora12.arn]
  dimensions = {
    instance_id = aws_instance.dba_dev_ora12[0].id
  }
}

resource "aws_cloudwatch_metric_alarm" "dba_dev_ora12_cpu75" {
  alarm_name                = "${upper(var.environment)} - WARNING - dba-dev-ora12 - CPUUtilization"
  evaluation_periods        = "1"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "300"
  statistic                 = "Maximum"
  threshold                 = "75"
  alarm_description         = "This metric monitors ec2 cpu utilization system"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.dba_dev_ora12.arn]
  ok_actions                = [aws_sns_topic.dba_dev_ora12.arn]
  dimensions = {
    instance_id = aws_instance.dba_dev_ora12[0].id
  }
}

# --------------------------------------------------------------------------------------
resource "aws_cloudwatch_metric_alarm" "dba_dev_ora12_root_disk_space_crit" {
  alarm_name          = "${upper(var.environment)} - CRITICAL - dba-dev-ora12 - root-disk-space"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  metric_name         = "disk_used_percent"
  namespace           = "CWAgent"
  period              = "300"
  evaluation_periods  = "1"
  statistic           = "Average"
  threshold           = "90"
  alarm_description   = "The disk space average precentage is over 80% for the last 10 minutes"
  alarm_actions       = [aws_sns_topic.dba_dev_ora12.arn]
  ok_actions          = [aws_sns_topic.dba_dev_ora12.arn]
  dimensions = {
    path              = var.root_disk_attachment
    device            = local.root_disk_device
    fstype            = var.disk_fs_type
    InstanceId        = aws_instance.dba_dev_ora12[0].id
    ImageId           = data.aws_ami.oracle_12_ami.id
    InstanceType      = var.instance_type
  }
}

resource "aws_cloudwatch_metric_alarm" "dba_dev_ora12_root_disk_space_warn" {
  alarm_name          = "${upper(var.environment)} - WARNING - dba-dev-ora12 - root-disk-space"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  metric_name         = "disk_used_percent"
  namespace           = "CWAgent"
  period              = "300"
  evaluation_periods  = "1"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "The disk space average precentage is over 80% for the last 10 minutes"
  alarm_actions       = [aws_sns_topic.dba_dev_ora12.arn]
  ok_actions          = [aws_sns_topic.dba_dev_ora12.arn]
  dimensions = {
    path              = var.root_disk_attachment
    device            = local.root_disk_device
    fstype            = var.disk_fs_type
    InstanceId        = aws_instance.dba_dev_ora12[0].id
    ImageId           = data.aws_ami.oracle_12_ami.id
    InstanceType      = var.instance_type
  }
}

# --------------------------------------------------------------------------------------
resource "aws_cloudwatch_metric_alarm" "dba_dev_ora12_u01_space_crit" {
  alarm_name          = "${upper(var.environment)} - CRITICAL - dba-dev-ora12 - /u01-disk-space"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  metric_name         = "disk_used_percent"
  namespace           = "CWAgent"
  period              = "600"
  evaluation_periods  = "1"
  statistic           = "Average"
  threshold           = "90"
  alarm_description   = "The disk space average precentage is over 90% for the last 10 minutes"
  alarm_actions       = [aws_sns_topic.dba_dev_ora12.arn]
  ok_actions          = [aws_sns_topic.dba_dev_ora12.arn]
  dimensions = {
    path              = local.ebs_info.ebs_u01.path
    device            = local.ebs_info.ebs_u01.device
    fstype            = var.disk_fs_type
    InstanceId        = aws_instance.dba_dev_ora12[0].id
    ImageId           = data.aws_ami.oracle_12_ami.id
    InstanceType      = var.instance_type
  }
}

resource "aws_cloudwatch_metric_alarm" "dba_dev_ora12_u01_space_warn" {
  alarm_name          = "${upper(var.environment)} - WARNING - dba-dev-ora12 - /u01-disk-space"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  metric_name         = "disk_used_percent"
  namespace           = "CWAgent"
  period              = "600"
  evaluation_periods  = "1"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "The disk space average precentage is over 90% for the last 10 minutes"
  alarm_actions       = [aws_sns_topic.dba_dev_ora12.arn]
  ok_actions          = [aws_sns_topic.dba_dev_ora12.arn]
  dimensions = {
    path              = local.ebs_info.ebs_u01.path
    device            = local.ebs_info.ebs_u01.device
    fstype            = var.disk_fs_type
    InstanceId        = aws_instance.dba_dev_ora12[0].id
    ImageId           = data.aws_ami.oracle_12_ami.id
    InstanceType      = var.instance_type
  }
}
