# Block Countries
resource "cloudflare_filter" "block_countries" {
  zone_id     = data.cloudflare_zone.domain.id
  description = "Expression to block countries"
  expression  = "(ip.geoip.country in {\"CN\" \"IN\" \"KP\" \"RU\"})"
}
resource "cloudflare_firewall_rule" "block_countries" {
  zone_id     = data.cloudflare_zone.domain.id
  description = "Firewall rule to block countries"
  filter_id   = cloudflare_filter.block_countries.id
  action      = "block"
}
