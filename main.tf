resource "intersight_ippool_pool" "ippool_pool1" {
  name             = "ippool_pool1"
  description      = "ippool pool"
  assignment_order = "sequential"
   ip_v4_config {
     moid        = var.ippool_ip_v4_config
     object_type = "ip_pool"
     gateway     = "10.100.23.1"
     netmask     = "255.255.255.0"
     primary_dns = "8.8.8.8"
   }
    ip_v4_blocks {
    from  = "10.100.23.200"     //시작ip
    object_type = "ip_pool"
    size  = "10"                //ip할당갯수
    to = "10.100.23.209"        //끝 ip
  }
   organization {
     object_type = "organization.organization"
     moid        = var.organization
   }
}


 variable "organization" {
   type = string
   description = "CIP"
 }
variable "ip_pool" {
  type        = string
  description = "Name of IP Pool used by IMC Access Policy"
  default     = "IP_Pool"   //변경
}
