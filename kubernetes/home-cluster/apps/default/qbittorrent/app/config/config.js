module.exports = {
  delay: 20,
  qbittorrentUrl: "http://localhost",
  torznab: [
    "http://prowlarr.default.svc.cluster.local/1/api?apikey=${SECRET_PROWLARR_APIKEY}",  // pt
    "http://prowlarr.default.svc.cluster.local/2/api?apikey=${SECRET_PROWLARR_APIKEY}",  // hdo
    "http://prowlarr.default.svc.cluster.local/3/api?apikey=${SECRET_PROWLARR_APIKEY}",  // rb
    "http://prowlarr.default.svc.cluster.local/4/api?apikey=${SECRET_PROWLARR_APIKEY}",  // tl
    "http://prowlarr.default.svc.cluster.local/5/api?apikey=${SECRET_PROWLARR_APIKEY}", // xb
    "http://prowlarr.default.svc.cluster.local/6/api?apikey=${SECRET_PROWLARR_APIKEY}", // dt
    "http://prowlarr.default.svc.cluster.local/7/api?apikey=${SECRET_PROWLARR_APIKEY}", // cz
    "http://prowlarr.default.svc.cluster.local/8/api?apikey=${SECRET_PROWLARR_APIKEY}", // az
    "http://prowlarr.default.svc.cluster.local/9/api?apikey=${SECRET_PROWLARR_APIKEY}", // at
    "http://prowlarr.default.svc.cluster.local/10/api?apikey=${SECRET_PROWLARR_APIKEY}", // tt
    "http://prowlarr.default.svc.cluster.local/11/api?apikey=${SECRET_PROWLARR_APIKEY}", // sa
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
  rssCadence: "10 minutes",
  searchCadence: "1 week",
  excludeRecentSearch: "26 weeks",
};
