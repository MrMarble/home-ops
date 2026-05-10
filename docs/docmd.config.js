// docmd.config.js
export default defineConfig({
  // --- Core Metadata ---
  title: 'Home Ops',
  url: 'https://mrmarble.dev/home-ops', // e.g. https://mysite.com (Critical for SEO/Sitemap)

  // --- Branding ---
  logo: {
    light: 'assets/images/logo-light.png',
    dark: 'assets/images/logo-dark.png',
    alt: 'Logo',
    href: '/',
  },
  favicon: 'assets/favicon.ico',

  // --- Source & Output ---
  src: 'src',
  out: 'site',

  // --- Layout & UI Architecture ---
  layout: {
    spa: true, // Enable seamless page transitions
    header: {
      enabled: true,
    },
    sidebar: {
      collapsible: true,
      defaultCollapsed: false,
    },
    optionsMenu: {
      position: 'sidebar-top', // 'menubar', 'header', 'sidebar-top', 'sidebar-bottom'
      components: {
        search: true,
        themeSwitch: true,
        sponsor: null,
      }
    },
    footer: {
      style: 'minimal', // 'minimal' or 'complete'
      content: '© ' + new Date().getFullYear() + ' Alvaro Tinoco.',
      branding: true    // Config for "Built with docmd" badge
    }
  },

  // --- Theme Settings ---
  theme: {
    name: 'default',        // Options: 'default', 'sky', 'ruby', 'retro'
    appearance: 'system',   // 'light', 'dark', or 'system'
    codeHighlight: true,
    customCss: [],
  },

  // --- General Features ---
  minify: true,
  autoTitleFromH1: true,
  copyCode: true,
  pageNavigation: true,

  customJs: [],

  // --- Versioning (Optional) ---
  /*
  versions: {
    position: 'sidebar-top', // 'sidebar-top', 'sidebar-bottom'
    current: 'v2',
    all: [
      { id: 'v2',       // Unique identifier for this version (used in URLs) and matching current version
       dir: 'docs',     // Source directory for latest version
       label: 'v2.0 (Latest)'
      },
      { id: 'v1',
       dir: 'docs-v1',  // Source directory for older version
       label: 'v1.0'
      }
    ]
  },
  */

  // --- Navigation (Sidebar) ---
  navigation: [
    { title: 'Introduction', path: '/', icon: 'home' },
    {
      title: 'Overview',
      icon: 'server',
      collapsible: false,
      children: [
        { title: 'Hardware', path: '/hardware', icon: 'cpu' },
        { title: 'Network', path: '/network', icon: 'globe' },
        { title: 'Cloud Services', path: '/cloud-services', icon: 'cloud' },
        { title: 'GitOps', path: '/gitops', icon: 'git-branch' },
      ],
    },
  ],

  // --- Plugins ---
  plugins: {
    seo: {
      defaultDescription: 'Documentation built with docmd.',
      openGraph: { defaultImage: '' },
      twitter: { cardType: 'summary_large_image' }
    },
    sitemap: { defaultChangefreq: 'weekly' },
  },

  // --- Edit Link ---
  editLink: {
    enabled: false,
  }
});
