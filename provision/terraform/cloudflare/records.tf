resource "cloudflare_record" "ipv4" {
  name    = "ipv4"
  zone_id = sensitive(data.cloudflare_zone.domain.id)
  value   = sensitive(chomp(data.http.ipv4.response_body))
  proxied = true
  type    = "A"
  ttl     = 1
}

resource "cloudflare_record" "root" {
  name    = data.sops_file.cloudflare_secrets.data["cloudflare_domain"]
  zone_id = sensitive(data.cloudflare_zone.domain.id)
  value   = "ipv4.${data.sops_file.cloudflare_secrets.data["cloudflare_domain"]}"
  proxied = true
  type    = "CNAME"
  ttl     = 1
}
