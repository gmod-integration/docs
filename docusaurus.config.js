// @ts-check
// `@type` JSDoc annotations allow editor autocompletion and type checking
// (when paired with `@ts-check`).
// There are various equivalent ways to declare your Docusaurus config.
// See: https://docusaurus.io/docs/api/docusaurus-config

import {themes as prismThemes} from 'prism-react-renderer';

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'Gmod Integration',
  tagline: 'Upgrade your discord server with Gmod Integration',
  favicon: 'img/logo.png',
  // Set the production url of your site here
  url: 'https://gmod-integration.com',
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  baseUrl: '/',

  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  organizationName: 'gmod-integration', // Usually your GitHub org/user name.
  projectName: 'docs', // Usually your repo name.

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          routeBasePath: '/',
          sidebarPath: './sidebars.js',
          // editUrl:
          //   'https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/',
        },
        pages: false,
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        }
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      // Replace with your project's social card
      image: 'img/docusaurus-social-card.jpg',
      navbar: {
        title: 'Gmod Integration',
        logo: {
          alt: 'Gmod Integration Logo',
          src: 'img/logo.png',
        },
        items: [
          {
              href: 'https://gmod-integration.com/guilds',
              label: 'Admin Panel',
              position: 'right',
          },
          {
              href: 'https://gmod-integration.com/invite',
              label: 'Invite Bot',
              position: 'right',
          },
          {
              href: 'https://gmod-integration.com/workshop',
              label: 'Workshop',
              position: 'right',
          },
          // {
          //   type: 'localeDropdown',
          // },
        ],
      },
    //   footer: {
    //     style: 'dark',
    //     links: [
    //       {
    //         title: 'Docs',
    //         items: [
    //           {
    //             label: 'Tutorial',
    //             to: '/docs/intro',
    //           },
    //         ],
    //       },
    //       {
    //         title: 'Community',
    //         items: [
    //           {
    //             label: 'Stack Overflow',
    //             href: 'https://stackoverflow.com/questions/tagged/docusaurus',
    //           },
    //           {
    //             label: 'Discord',
    //             href: 'https://discordapp.com/invite/docusaurus',
    //           },
    //           {
    //             label: 'Twitter',
    //             href: 'https://twitter.com/docusaurus',
    //           },
    //         ],
    //       },
    //       {
    //         title: 'More',
    //         items: [
    //           {
    //             label: 'GitHub',
    //             href: 'https://github.com/facebook/docusaurus',
    //           },
    //         ],
    //       },
    //     ],
    //     copyright: `Copyright © ${new Date().getFullYear()} My Project, Inc. Built with Docusaurus.`,
    //   },
    //   prism: {
    //     theme: prismThemes.github,
    //     darkTheme: prismThemes.dracula,
    //   },
    }),
};

export default config;
