# Network

My DNS setup may seem a bit complicated at first, but it allows for completely automatic management of DNS entries for Services and Ingress objects.

## Components

### Traefik

[Traefik](https://github.com/traefik/traefik) is my cluster Ingress controller. It is set to a LoadbalancerIP provided by [Metallb](https://github.com/metallb/metallb) so I can access the services directly

### external-dns

[external-dns](https://github.com/kubernetes-sigs/external-dns) runs in my cluster and is connected to my domain DNS server. It automatically manages records for all my Ingresses taht have the `external-dns/is-public: true` annotation set.

### Dynamic DNS

In order to keep my WAN IP address up to date on my DNS provier I have deployed a [CronJob](https://github.com/mrmarble/home-ops/tree/main/cluster/apps/networking/cloudflare-ddns/cron-job.yaml) in my cluster that periodically checks and updates those records.

### How it all works together

When I am connected to my home network, my DNS server is set to [pi-hole](https://github.com/pi-hole/pi-hole) that is running on my network. I have configured it forward all requests pointing to my domain to the [Metallb](https://github.com/metallb/metallb) address providing internal DNS resolution.

```
# /etc/dnsmasq.d/99-k8s-gateway-forward.conf
server=/${SECRET_DOMAIN}/${METALLB_K8S_GATEWAY_ADDR}
```

When I am outside my home network, and request an address for one of my domains, it will query my domains DNS server and will respond with the DNS record that was set by [external-dns](https://github.com/kubernetes-sigs/external-dns).
