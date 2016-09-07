resource "cloudflare_record" "mx_aspmx" {
    domain = "${var.domain_name}"
    name = "${var.name}"
    value = "aspmx.l.google.com"
    type = "MX"
    priority = 1
    ttl = 1
    proxied = false
}

resource "cloudflare_record" "mx_alt1" {
    domain = "${var.domain_name}"
    name = "${var.name}"
    value = "alt1.aspmx.l.google.com"
    type = "MX"
    priority = 5
    ttl = 1
    proxied = false
}

resource "cloudflare_record" "mx_alt2" {
    domain = "${var.domain_name}"
    name = "${var.name}"
    value = "alt2.aspmx.l.google.com"
    type = "MX"
    priority = 5
    ttl = 1
    proxied = false
}

resource "cloudflare_record" "mx_alt3" {
    domain = "${var.domain_name}"
    name = "${var.name}"
    value = "alt3.aspmx.l.google.com"
    type = "MX"
    priority = 10
    ttl = 1
    proxied = false
}

resource "cloudflare_record" "mx_alt4" {
    domain = "${var.domain_name}"
    name = "${var.name}"
    value = "alt4.aspmx.l.google.com"
    type = "MX"
    priority = 10
    ttl = 1
    proxied = false
}
