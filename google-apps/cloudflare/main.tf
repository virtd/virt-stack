variable "domain_name" {} 
variable "name" {} 

output "spf_txt" {
    value = "include:_spf.google.com"
}
