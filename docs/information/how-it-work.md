---
sidebar_position: 10
---

# How it Work

## Principle

As you know, we provide an all-in-one solution, you don't need to host the bot or anything else. You just need to install the workshop addon on your server, invite the bot on your discord server and tadah, the installation is done and you can customize the service by accessing the [Admin Panel](https://gmod-integration.com/guilds).

## In More Detail

### Garry's Mod Addon

The garry's mod addon is the key of our service, it's the link between your server and our service through our API / Websocket. This is the only thing you need to install, you can find the installation guide [here](/docs/category/getting-started).

## Infrastructure

Our infrastructure is based on the following technologies:

### Backend

- [NodeJS](https://nodejs.org/en/)
- [Express](https://expressjs.com/)

### Frontend

- Native HTML / CSS / JS (Yes, I like to suffer)

### Database

- [MariaDB](https://mariadb.org/) (Will be change to [PostgreSQL](https://www.postgresql.org/) soon)
- [Redis](https://redis.io/)

### Discord Bot

- [NodeJS](https://nodejs.org/en/)
- [Discord.js](https://discord.js.org/#/)

### Hosting

Host in a dedicated server in North of France, on private network, with a 10Gbps symmetrical connection.

### Server Specification

The server is a VM in my Proxmox dedicated server, the VM specification are:

- CPU: 8 x Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz
- RAM: 32GB DDR4 2400MHz
- Disk: RAID 10 - 512GB NVMe
- Bandwidth: 1Gbps symmetrical
- OS: Ubuntu 22.04 LTS

### Server Security

The server is protected by a firewall, ssh only accessible by private key, database only accessible by private network, etc...

### Server Backup

The server is backup every day, the backup is store in a other server to avoid data loss.

### Server Monitoring

The server is monitored by [UptimeRobot](https://uptimerobot.com/), [NetData](https://www.netdata.cloud/) and [Prometheus](https://prometheus.io/).

### Server Logs