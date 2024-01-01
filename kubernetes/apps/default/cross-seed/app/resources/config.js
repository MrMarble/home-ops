module.exports = {
  delay: 20,
  qbittorrentUrl: "http://qbittorrent.default.svc.cluster.local",
  torznab: [
    `http://prowlarr.default.svc.cluster.local/1/api?apikey=${process.env.PROWLARR_API_KEY}`,  // pt
    `http://prowlarr.default.svc.cluster.local/2/api?apikey=${process.env.PROWLARR_API_KEY}`,  // hdo
    `http://prowlarr.default.svc.cluster.local/3/api?apikey=${process.env.PROWLARR_API_KEY}`,  // rb
    `http://prowlarr.default.svc.cluster.local/4/api?apikey=${process.env.PROWLARR_API_KEY}`,  // tl
    `http://prowlarr.default.svc.cluster.local/5/api?apikey=${process.env.PROWLARR_API_KEY}`, // xb
    `http://prowlarr.default.svc.cluster.local/6/api?apikey=${process.env.PROWLARR_API_KEY}`, // dt
    `http://prowlarr.default.svc.cluster.local/7/api?apikey=${process.env.PROWLARR_API_KEY}`, // cz
    `http://prowlarr.default.svc.cluster.local/8/api?apikey=${process.env.PROWLARR_API_KEY}`, // az
    `http://prowlarr.default.svc.cluster.local/9/api?apikey=${process.env.PROWLARR_API_KEY}`, // at
    `http://prowlarr.default.svc.cluster.local/10/api?apikey=${process.env.PROWLARR_API_KEY}`, // tt
    `http://prowlarr.default.svc.cluster.local/11/api?apikey=${process.env.PROWLARR_API_KEY}`, // sa
    `http://prowlarr.default.svc.cluster.local/12/api?apikey=${process.env.PROWLARR_API_KEY}`, // ez
  ],
  port: process.env.CROSSSEED_PORT || 80,
  apiAuth: false,
  action: "inject",
  includeEpisodes: false,
  includeSingleEpisodes: true,
  includeNonVideos: true,
  duplicateCategories: true,
  matchMode: "safe",
  skipRecheck: true,
  linkType: "hardlink",
  linkDir: "/media/Downloads/qbittorrent/complete/cross-seed",
  dataDirs: [
    "/media/Downloads/qbittorrent/complete/prowlarr",
    "/media/Downloads/qbittorrent/complete/radarr",
    "/media/Downloads/qbittorrent/complete/sonarr",
  ],
  maxDataDepth: 1,
  outputDir: "/config/xseeds",
  torrentDir: "/config/qBittorrent/BT_backup",
};
