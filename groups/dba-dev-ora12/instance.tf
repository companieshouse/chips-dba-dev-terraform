resource "aws_instance" "dba_dev_ora12" {
  count = var.instance_count

  ami           = data.aws_ami.oracle_12_ami.id
  instance_type = var.instance_type
  subnet_id     = element(local.application_subnet_ids_by_az, count.index) # use 'element' function for wrap-around behaviour
  #key_name      = aws_key_pair.dba_dev_ora12.key_name
  

  iam_instance_profile   = module.instance_profile.aws_iam_instance_profile.name
  vpc_security_group_ids = [aws_security_group.dba_dev_ora12.id]
  tags = merge(
    local.common_tags,
    tomap({
      Name           = local.common_resource_name
      Domain         = local.dns_zone
      Hostname       = var.service_subtype
    })
  )

  root_block_device {
    volume_size = var.root_volume_size
    encrypted   = var.encrypt_root_block_device
    iops        = var.root_block_device_iops
    kms_key_id  = local.aws_kms_key
    throughput  = var.root_block_device_throughput
    volume_type = var.root_block_device_volume_type
    tags = merge(
      local.common_tags,
      tomap({
        Name           = "${local.common_resource_name}-${count.index + 1}-root"
      })
    )
  }
}

resource "aws_ebs_volume" "ora1" {
  availability_zone = aws_instance.dba_dev_ora12[0].availability_zone
  size              = var.ora_volume_size_gib
  encrypted         = var.encrypt_ebs_block_device
  iops              = var.ebs_block_device_iops
  kms_key_id        = local.aws_kms_key
  throughput        = var.ebs_block_device_throughput
  type              = var.ebs_block_device_volume_type
  tags = merge(
    local.common_tags,
    tomap({
      Name           = "${local.common_resource_name}-ora1"
    })
  )
}

resource "aws_volume_attachment" "ora1_att" {
  device_name = var.ora1_device_name
  volume_id   = aws_ebs_volume.ora1.id
  instance_id = aws_instance.dba_dev_ora12[0].id
}

resource "aws_key_pair" "dba_dev_ora12" {
 key_name   = "${local.common_resource_name}-master"
 public_key = local.instance_public_key
}
