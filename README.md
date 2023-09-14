<div align="center">

<img src="https://gitlab.com/uploads/-/system/project/avatar/35246547/homelab.png" align="left" width="144px" height="144px"/>

## My home operations repository

_... managed with Flux, Renovate and GitHub Actions_ 🐱

</div>

<div align="center">

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/mrmarble/home-ops/schedule-renovate.yaml?&logo=renovatebot&style=for-the-badge&label=renovate&color=blue)
[![kubernetes](https://img.shields.io/badge/kubernetes-v1.28.1-success.svg?style=for-the-badge&logo=kubernetes&color=blue&logoColor=white)](https://kubernetes.io/)
[![Talos](https://img.shields.io/badge/Talos-v1.5.2-success?style=for-the-badge&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAACMAAAAnCAMAAACylgF9AAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAgRQTFRFAAAA%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FzT39WwAAAKx0Uk5TABLe%2FhEDBRPk%2F%2BMGBAFFxmJwPfXXOxbtND%2FrFJeFkpM3%2BuoIDPM1CkBMwwlOeaOvd08npvzyM6covZvKLcedcoICjouDf%2FlVR79EVn2k6SX28PQHJg7AyDA4xcG%2B%2FZ9nbZwxdnuKeHHhWFTdlrS3kGuJurwumnM%2Bs7U6dA%2FlX6Jb5oSH%2B6ilFcyx1R8j0s3fGhm5lWCqrVyMbFpeoI0XhtPWQSDEY8L3LFO7OUB67XAAAAKTSURBVHicddT7OxRRGMDxl2nV1xobG0WURS6JcklJikLt6oLoolaSSqgo3URXJd2VSjfd7%2F9kZ3bHmJnn6fwyO%2B9%2Bzpk57%2FvOEXGOmFgtdoH8Z3jiIpeFi4iPGm%2BCS%2BiJvsUuk%2BRL1B0m2Y9PdxjPEvwpDpO6FJY5TBqkL3c%2BLAMyHWYFrHS9UFaA7BybyV1FIM9l8n1QYDOFsLrI%2BndNdI%2FFUGIza2FdJJ5QKlIWKI%2F4vArSdct41lNRaYSLNgQ2ShVsMtKXXw2bLZMHNcZU7xaokq0a1Nap222R1U1TC9tVrK4etCTxNEDjDnW%2FE4KWqYGQijU1wi6PSNxujT17RXKaaakzTYKf1n0ibdloJZE6tgdhv%2Fp1AA6a5hB0qNmH4Uh7dPeV6YSbRDrhqGm64Jh6Upjs7rkUHdeoLpIeOGEa9f4npaga7ZSVxtxeGkNy2shi1JRDn4Qa6c%2Bfr8QAFEsKnDHNWcgyMn%2FOVq1BGJJuOG%2BaCzAsQzBoMxfhklyGK6a5CiNyTVVgnoyO0Twi16HTNDfgpow0c2vUMvWakSCV%2F9umuQMNEhdEq58jaS2MJ4rcNSZHjVrynkjiOC0FUTJxHyZVVR%2BgPTTNI3isKjoJT1IjHag2%2BvSZomHirZqOUREjMhULz1WKvC%2Bg1ajxNLy0zCt4rWKhVhjwygyE3xjrlcBby7yD90awKwwfjD7MVB0iqb1os5aZgljj6%2FJ8NPqwLTAT6ZBS%2BGTr%2Bc9QaITjZgJlIgVWyXpspsH6BL9YaZyKR%2FtqM2r3vbPiHKoxvuk2o9cY7eEYCR0wLTYj3%2BGHx2GGAzRPOMzsTwK%2FHKbPb77i%2FBmVgf%2B3w%2BihP39dJjnoOseU0l1GdwtrqHO1332u%2FgNM4Ww99xg%2B1AAAAABJRU5ErkJggg%3D%3D&color=blue)](https://talos.dev)

</div>
<div align="center">
<br/>

[![Uptime Robot status](https://img.shields.io/uptimerobot/status/m793877647-43f7de17c4661915fdcc503c?label=Home%20Internet&logo=googlehome&logoColor=white&style=for-the-badge)](https://uptimerobot.com/)
[![Uptime Robot status](https://img.shields.io/uptimerobot/status/m793877616-990da6b85bc8e4fc22832384?label=Home%20Assistant&logo=homeassistant&logoColor=white&style=for-the-badge)](https://uptimerobot.com/)

<br/>
</div>

👋 Welcome to my Home Operations repository. This is a mono repository for my home infrastructure and Kubernetes cluster implementing Infrastructure as Code (IaC) and GitOps practices using tools like [Kubernetes](https://kubernetes.io/), [Flux](https://github.com/fluxcd/flux2), [Renovate](https://github.com/renovatebot/renovate) and [GitHub Actions](https://github.com/features/actions).

---

### 📖 Docs

The documentation that goes along with this repo can be found [over here](https://mrmarble.github.io/home-ops/).

---

### 🤝 Thanks

Thanks to all the people who donate their time to the [Kubernetes @Home](https://discord.gg/k8s-at-home) Discord community. A lot of inspiration for my cluster comes from the people that have shared their clusters using the [k8s-at-home](https://github.com/topics/k8s-at-home) GitHub topic. Be sure to check out the [Kubernetes @Home search](https://nanne.dev/k8s-at-home-search/) for ideas on how to deploy applications or get ideas on what you can deploy.
