resource "intersight_ippool_pool" "ippool_pool1" {
  name             = "ippool_pool1"
  description      = "ippool pool"
  assignment_order = "sequential"
   ip_v4_config {
     moid        = var.ippool_ip_v4_config
     object_type = "ippool.IpV4Config"
     gateway     = "10.100.23.1"
     netmask     = "255.255.255.0"
     primary_dns = "8.8.8.8"
   }
    ip_v4_blocks {
    from  = "10.100.23.200"     //시작ip
    object_type = "ippool.IpV4Config"
    size  = "10"                //ip할당갯수
    to = "10.100.23.209"        //끝 ip
  }
   organization {
     object_type = "organization.Organization"
     moid        = var.organization
   }
}

 variable "ippool_ip_v4_config" {
   type = string
   description = " value for moid"
 }
 variable "organization" {
   type = string
   description = "value for organization"
 }
