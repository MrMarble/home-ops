# Network

My DNS setup may seem a bit complicated at first, but it allows for completely automatic management of DNS entries for Services and Ingress objects.

## Components

### NGINX

[NGINX](https://github.com/kubernetes/ingress-nginx/) is my cluster Ingress controller. It is set to a LoadbalancerIP provided by [Cilium](https://github.com/cilium/cilium) so I can access the services directly

### external-dns

[external-dns](https://github.com/kubernetes-sigs/external-dns) runs in my cluster and is connected to my domain DNS server. It automatically manages records for all my Ingresses taht have the `external-dns/is-public: true` annotation set.

### Cloudflared

In order to expose my services to the outside world, I have a Cloudflare tunnel directly to my cluster using [Cloudflared](https://github.com/cloudflare/cloudflared), that way I don't need to open ports on my router

### How it all works together

When I am connected to my home network, my DNS server is set to [pi-hole](https://github.com/pi-hole/pi-hole) that is running on my network. I have configured it forward all requests pointing to my domain to the [Cilium](https://github.com/cilium/cilium) address providing internal DNS resolution.

```
# /etc/dnsmasq.d/99-k8s-gateway-forward.conf
server=/${SECRET_DOMAIN}/${CILIUM_K8S_GATEWAY_ADDR}
```

When I am outside my home network, and request an address for one of my domains, it will query my domains DNS server and will respond with the DNS record that was set by [cloudflared](https://github.com/cloudflare/cloudflared).
