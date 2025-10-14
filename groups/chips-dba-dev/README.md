## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0, < 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 0.3, < 4.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 0.3, < 4.0 |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |
| <a name="provider_vault"></a> [vault](#provider\_vault) | >= 2.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db_ec2_security_group"></a> [db\_ec2\_security\_group](#module\_db\_ec2\_security\_group) | terraform-aws-modules/security-group/aws | ~> 3.0 |
| <a name="module_db_instance_profile"></a> [db\_instance\_profile](#module\_db\_instance\_profile) | git@github.com:companieshouse/terraform-modules//aws/instance_profile | tags/1.0.88 |

## Resources

| Name | Type |
|------|------|
| [aws_instance.db_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.ec2_keypair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_route53_record.db_dns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_security_group_rule.admin_ingress_oem](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_sns_topic.chips-dev_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.chips-dev_Subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.chips-dev_Subscriptionhttps](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_ssm_association.ansible_apply](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_association) | resource |
| [aws_ssm_association.ansible_check](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_association) | resource |
| [aws_ssm_maintenance_window.maintenance_window](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_maintenance_window) | resource |
| [aws_ssm_maintenance_window_target.target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_maintenance_window_target) | resource |
| [aws_ssm_parameter.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ami.oracle_12](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_ec2_managed_prefix_list.admin](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_managed_prefix_list) | data source |
| [aws_ec2_managed_prefix_list.shared_services_cidrs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_managed_prefix_list) | data source |
| [aws_kms_key.ebs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_key) | data source |
| [aws_route53_zone.private_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |
| [aws_security_group.chips_dba_dev_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnet.data_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet_ids.data](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet_ids) | data source |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |
| [template_cloudinit_config.userdata_config](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/cloudinit_config) | data source |
| [template_file.userdata](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [vault_generic_secret.account_ids](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.cdp_dev_data_cidrs](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.ch_dev_mgmt_cidrs](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.chs_application_cidrs](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.chs_subnet](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.dev_application_cidrs](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.dev_data_cidrs](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.ec2_data](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.kms_keys](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.netapp_snapcenter_ip](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.security_kms_keys](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.security_s3_buckets](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.shared_services_s3](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.sns_url](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.ssm](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.staging_dbs](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account"></a> [account](#input\_account) | Short version of the name of the AWS Account in which resources will be administered | `string` | n/a | yes |
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | Set this to null to use the latest AMI, set the default to an AMI Id to hardcode and always use that AMI | `string` | `"ami-004f537f16c7539c0"` | no |
| <a name="input_ami_name"></a> [ami\_name](#input\_ami\_name) | Name of the AMI to use in the Auto Scaling configuration for email servers | `string` | `"oracle-12-*"` | no |
| <a name="input_ansible_ssm_apply_only_at_cron_interval"></a> [ansible\_ssm\_apply\_only\_at\_cron\_interval](#input\_ansible\_ssm\_apply\_only\_at\_cron\_interval) | If false, applies on terraform apply, then on provided schedule expression. If true first apply will be at the next occurance of the schedule expression. | `string` | `true` | no |
| <a name="input_ansible_ssm_apply_schedule_expression"></a> [ansible\_ssm\_apply\_schedule\_expression](#input\_ansible\_ssm\_apply\_schedule\_expression) | SSM schedule expression for running playbook in apply mode, see https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html for syntax. | `string` | `null` | no |
| <a name="input_ansible_ssm_check_schedule_expression"></a> [ansible\_ssm\_check\_schedule\_expression](#input\_ansible\_ssm\_check\_schedule\_expression) | SSM schedule expression for running playbook in check mode, see https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html for syntax. | `string` | `null` | no |
| <a name="input_ansible_ssm_git_repo_name"></a> [ansible\_ssm\_git\_repo\_name](#input\_ansible\_ssm\_git\_repo\_name) | Name of the repository containing Ansible code to be downloaded. | `string` | n/a | yes |
| <a name="input_ansible_ssm_git_repo_options"></a> [ansible\_ssm\_git\_repo\_options](#input\_ansible\_ssm\_git\_repo\_options) | Options for git code pull, e.g. 'branch:master' | `string` | `"branch:master"` | no |
| <a name="input_ansible_ssm_git_repo_owner"></a> [ansible\_ssm\_git\_repo\_owner](#input\_ansible\_ssm\_git\_repo\_owner) | Name of the repository owner containing Ansible code to be downloaded. | `string` | n/a | yes |
| <a name="input_ansible_ssm_git_repo_path"></a> [ansible\_ssm\_git\_repo\_path](#input\_ansible\_ssm\_git\_repo\_path) | Directory prefix of code to be downloaded | `string` | `"ansible/"` | no |
| <a name="input_ansible_ssm_verbose_level"></a> [ansible\_ssm\_verbose\_level](#input\_ansible\_ssm\_verbose\_level) | Verbosity flag to passs to ansible command, e.g. '-v', '-vvv' | `string` | `"-v"` | no |
| <a name="input_application"></a> [application](#input\_application) | The name of the application | `string` | n/a | yes |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zone names (e.g. [eu-west-2a, eu-west-2b]) to deploy instances into, usually to meet constraints such as remote storage locality. Leaving null will deploy across all matching subnets/zones in the provided VPC | `list(string)` | `null` | no |
| <a name="input_aws_account"></a> [aws\_account](#input\_aws\_account) | The name of the AWS Account in which resources will be administered | `string` | n/a | yes |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | The AWS profile to use | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region in which resources will be administered | `string` | n/a | yes |
| <a name="input_chips_dba_dev_sg"></a> [chips\_dba\_dev\_sg](#input\_chips\_dba\_dev\_sg) | List of CHIPS DBA DEV Security Groups | `list(any)` | `[]` | no |
| <a name="input_cloudwatch_logs"></a> [cloudwatch\_logs](#input\_cloudwatch\_logs) | Map of log files to be collected by Cloudwatch Logs | `map(any)` | `null` | no |
| <a name="input_cloudwatch_namespace"></a> [cloudwatch\_namespace](#input\_cloudwatch\_namespace) | A custom namespace to define for CloudWatch custom metrics such as memory and disk | `string` | `null` | no |
| <a name="input_cloudwatch_oracle_log_groups"></a> [cloudwatch\_oracle\_log\_groups](#input\_cloudwatch\_oracle\_log\_groups) | A list of CloudWatch Log Groups that will be used to receive Oracle log data | `list(string)` | `[]` | no |
| <a name="input_db_instance_count"></a> [db\_instance\_count](#input\_db\_instance\_count) | The number of ec2 instances to create | `string` | n/a | yes |
| <a name="input_db_instance_size"></a> [db\_instance\_size](#input\_db\_instance\_size) | The size of the ec2 instances | `string` | n/a | yes |
| <a name="input_default_log_group_retention_in_days"></a> [default\_log\_group\_retention\_in\_days](#input\_default\_log\_group\_retention\_in\_days) | Total days to retain logs in CloudWatch log group if not specified for specific logs | `number` | `180` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain Name for ACM Certificate | `string` | `"*.companieshouse.gov.uk"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the environment | `string` | n/a | yes |
| <a name="input_maintenance_window_cutoff"></a> [maintenance\_window\_cutoff](#input\_maintenance\_window\_cutoff) | The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution | `number` | `1` | no |
| <a name="input_maintenance_window_duration"></a> [maintenance\_window\_duration](#input\_maintenance\_window\_duration) | The duration of the Maintenance Window in hours | `number` | `2` | no |
| <a name="input_maintenance_window_schedule_expression"></a> [maintenance\_window\_schedule\_expression](#input\_maintenance\_window\_schedule\_expression) | The schedule of the Maintenance Window in the form of a cron or rate expression | `string` | `null` | no |
| <a name="input_netapp_ips"></a> [netapp\_ips](#input\_netapp\_ips) | List of Netapp IP addresses to use for iscsi discovery. | `list(string)` | n/a | yes |
| <a name="input_nfs_mount_destination_parent_dir"></a> [nfs\_mount\_destination\_parent\_dir](#input\_nfs\_mount\_destination\_parent\_dir) | The parent folder that all NFS shares should be mounted inside on the EC2 instance | `string` | `"/mnt"` | no |
| <a name="input_nfs_mounts"></a> [nfs\_mounts](#input\_nfs\_mounts) | A map of objects which contains mount details for each mount path required. | `map(any)` | `{}` | no |
| <a name="input_nfs_server"></a> [nfs\_server](#input\_nfs\_server) | The name or IP of the environment specific NFS server | `string` | `null` | no |
| <a name="input_oracle_sid"></a> [oracle\_sid](#input\_oracle\_sid) | Value to be inserted into oracle users ORACLE\_SID env variable | `string` | `""` | no |
| <a name="input_oracle_unqname"></a> [oracle\_unqname](#input\_oracle\_unqname) | Value to be inserted into oracle users ORACLE\_UNQNAME env variable | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | Short version of the name of the AWS region in which resources will be administered | `string` | n/a | yes |
| <a name="input_repo"></a> [repo](#input\_repo) | Github Repository where code resides | `string` | `""` | no |
| <a name="input_ssm_playbook_file_name"></a> [ssm\_playbook\_file\_name](#input\_ssm\_playbook\_file\_name) | Name of the playbook file to run | `string` | `"ssm-playbook.yml"` | no |
| <a name="input_ssm_requirements_file_name"></a> [ssm\_requirements\_file\_name](#input\_ssm\_requirements\_file\_name) | Name of the requirements file to download Ansible dependancies | `string` | `"requirements.yml"` | no |
| <a name="input_vault_password"></a> [vault\_password](#input\_vault\_password) | Password for connecting to Vault - usually supplied through TF\_VARS | `string` | n/a | yes |
| <a name="input_vault_username"></a> [vault\_username](#input\_vault\_username) | Username for connecting to Vault - usually supplied through TF\_VARS | `string` | n/a | yes |
| <a name="input_vpc_sg_cidr_blocks_oracle"></a> [vpc\_sg\_cidr\_blocks\_oracle](#input\_vpc\_sg\_cidr\_blocks\_oracle) | Security group cidr blocks for Oracle | `list(any)` | `[]` | no |
| <a name="input_vpc_sg_cidr_blocks_ssh"></a> [vpc\_sg\_cidr\_blocks\_ssh](#input\_vpc\_sg\_cidr\_blocks\_ssh) | Security group cidr blocks for ssh | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_dns_names"></a> [db\_dns\_names](#output\_db\_dns\_names) | n/a |
