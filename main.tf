# @reference:
#   https://www.terraform.io/docs/providers/alicloud/r/dns.html
#   https://www.terraform.io/docs/providers/alicloud/r/dns_group.html
#   https://www.terraform.io/docs/providers/alicloud/r/dns_record.html
#   
# resource "alicloud_dns_group" "infra" {
#     name        = var.dns_group
# }
# resource "alicloud_dns" "infra" {
#     name        = var.dns_domain_name
#     group_id    = alicloud_dns_group.infra.id
#     # resource_group_id = var.resource_group_id
# }
resource "alicloud_dns_record" "inc" {
    name        = var.dns_domain_name
    host_record = "inc"
    type        = "A"
    value       = var.dns_inc_value
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "at" {
    name        = var.dns_domain_name
    host_record = "@"
    type        = "A"
    value       = var.dns_www_value
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "www" {
    name        = var.dns_domain_name
    host_record = "www"
    type        = "A"
    value       = var.dns_www_value
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "aliyundm-mail" {
    name        = var.dns_domain_name
    host_record = "aliyundm.mail"
    type        = "TXT"
    value       = var.dns_aliyundm_mail_value
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "dmtrace" {
    name        = var.dns_domain_name
    host_record = "dmtrace"
    type        = "CNAME"
    value       = "tracedm.aliyuncs.com"
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "mail-txt" {
    name        = var.dns_domain_name
    host_record = "mail"
    type        = "TXT"
    value       = "v=spf1 include:spf1.dm.aliyun.com -all"
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
# resource "alicloud_dns_record" "mail-mx" {
#     name        = var.dns_domain_name
#     host_record = "mail"
#     type        = "MX"
#     value       = "mx01.dm.aliyun.com | 10"
#     ttl         = "600"
#     priority    = "10"
#     routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
# }
resource "alicloud_dns_record" "local" {
    name        = var.dns_domain_name
    host_record = "*.local"
    type        = "A"
    value       = "127.0.0.1"
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "develop" {
    name        = var.dns_domain_name
    host_record = "*.develop"
    type        = "A"
    value       = var.dns_develop_value
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "testing" {
    name        = var.dns_domain_name
    host_record = "*.testing"
    type        = "A"
    value       = var.dns_testing_value
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}
resource "alicloud_dns_record" "staging" {
    name        = var.dns_domain_name
    host_record = "*.staging"
    type        = "A"
    value       = var.dns_staging_value
    ttl         = "600"
    priority    = "10"
    routing     = "default"     # default|telecom|unicom|mobile|oversea|edu|drpeng|btvn 
}