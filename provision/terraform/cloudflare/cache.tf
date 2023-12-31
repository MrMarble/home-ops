# Cache Settings
resource "cloudflare_ruleset" "cache_settings" {
  zone_id     = data.cloudflare_zone.domain.id
  name        = "Cache"
  description = "Cache settings"
  kind        = "zone"
  phase       = "http_request_cache_settings"

  # Jellyfin Images
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        default = 16070400
        mode    = "override_origin"
      }
      cache = true
      cache_key {
        custom_key {
          query_string {
            exclude = ["*"]
          }
        }
      }
      edge_ttl {
        default = 31536000
        mode    = "override_origin"
      }
    }
    description = "Set cache settings for jellyfin: images"
    enabled     = true
    expression  = "(http.host eq \"jellyfin.${data.sops_file.cloudflare_secrets.data["cloudflare_domain"]}\" and http.request.uri.path contains \"/Items\" and http.request.uri.path contains \"/Images\") or (http.host eq \"jellyfin.${data.sops_file.cloudflare_secrets.data["cloudflare_domain"]}\" and http.request.uri.path contains \"/assets/img\")"
  }
}
