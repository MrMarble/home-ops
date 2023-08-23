module.exports = {
  delay: 20,
  qbittorrentUrl: "http://localhost",
  torznab: [
    "http://prowlarr.default.svc.cluster.local/1/api?apikey=${SECRET_PROWLARR_APIKEY}",  // fl
    "http://prowlarr.default.svc.cluster.local/2/api?apikey=${SECRET_PROWLARR_APIKEY}",  // avz
    "http://prowlarr.default.svc.cluster.local/3/api?apikey=${SECRET_PROWLARR_APIKEY}",  // st
    "http://prowlarr.default.svc.cluster.local/4/api?apikey=${SECRET_PROWLARR_APIKEY}",  // ptp
    "http://prowlarr.default.svc.cluster.local/5/api?apikey=${SECRET_PROWLARR_APIKEY}", // btn
    "http://prowlarr.default.svc.cluster.local/6/api?apikey=${SECRET_PROWLARR_APIKEY}", // tl
  ],
  action: "inject",
  includeEpisodes: true,
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
  outputDir: "/config/xseeds",
  torrentDir: "/config/qBittorrent/BT_backup",
};
