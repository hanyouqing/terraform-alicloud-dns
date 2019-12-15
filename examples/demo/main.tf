module "dns" {
    # source = "hanyouqing/dns/alicloud" 
    source = "../../../dns"
    dns_group           = var.dns_group
    dns_domain_name     = var.dns_domain_name
    dns_inc_value       = var.dns_inc_value
    dns_www_value       = var.dns_www_value
    dns_develop_value   = var.dns_develop_value
    dns_testing_value   = var.dns_testing_value
    dns_staging_value   = var.dns_staging_value
}
