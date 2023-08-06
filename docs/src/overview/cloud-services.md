# :cloud: Cloud services

While most of my infrastructure and workloads are selfhosted I do rely upon the cloud for certain key parts of my setup. This saves me from having to worry about two things. (1) Dealing with chicken/egg scenarios and (2) services I critically need whether my cluster is online or not.

The alternative solution to these two problems would be to host a Kubernetes cluster in the cloud and deploy applications like [HCVault](https://www.vaultproject.io/), [Vaultwarden](https://github.com/dani-garcia/vaultwarden), [ntfy](https://ntfy.sh/), and [Authentik](https://goauthentik.io/). However, maintaining another cluster and monitoring another group of workloads is a lot more time and effort than I am willing to put in.

| Service                                                       | Use                                                            | Cost         |
| ------------------------------------------------------------- | -------------------------------------------------------------- | ------------ |
| [GitHub](https://github.com/)                                 | Hosting this repository and continuous integration/deployments | Free         |
| [Cloudflare](https://www.cloudflare.com/)                     | Domain, DNS and proxy management                               | Free         |
| [B2 Storage](https://www.backblaze.com/b2/cloud-storage.html) | Offsite application backups                                    | Free         |
| [Terraform Cloud](https://www.terraform.io)                   | Store Terraform state online                                   | Free         |
|                                                               |                                                                | Total: ~$0/m |
