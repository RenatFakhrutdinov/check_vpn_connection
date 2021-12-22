# check_vpn_connection

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub](https://img.shields.io/pub/v/check_vpn_connection)](https://pub.dev/packages/check_vpn_connection)

A simple and lightweight Flutter package that lets you define VPN connection status on your devices.

> Note this plugin is in the early stages of development and has been poorly tested. You can use the plugin at your own risk.

## How to use

You can get a VPN connection status, which is either `true` (vpn connected) or `false` (no vpn connection)

```

if (await CheckVpnConnection.isVpnActive()) {
  // do some action if VPN connection status is true
}

```
Also see our [Example](https://github.com/RenatFakhrutdinov/check_vpn_connection/tree/master/example).

## Issues

Please file any issues, bugs or feature request as an issue on our [GitHub](https://github.com/RenatFakhrutdinov/check_vpn_connection/issues) page.

## Want to contribute

To contribute, follow the following easy steps
##### Step 1
- Fork this repo!
##### Step 2
- Make your own updates
##### Step 3
- Create a new pull request
