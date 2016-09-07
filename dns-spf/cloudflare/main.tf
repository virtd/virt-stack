variable "domain_name" {} 
variable "name" {} 
variable "value" {} 

output "txt" {
    value = "${cloudflare_record.spf.value}"
}

resource "cloudflare_record" "spf" {
    domain = "${var.domain_name}"
    name = "${var.name}"
    value = "v=spf1 ${var.value}"
    type = "SPF"
    ttl = 1
}

resource "cloudflare_record" "txt" {
    domain = "${var.domain_name}"
    name = "${var.name}"
    value = "${cloudflare_record.spf.value}"
    type = "TXT"
    ttl = 1
}
