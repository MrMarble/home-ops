resource "cloudflare_account" "main" {
  name              = "My Cloudflare Account"
  type              = "standard"
  enforce_twofactor = false
}
