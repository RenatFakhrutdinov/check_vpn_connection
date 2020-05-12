library check_vpn_connection;

import 'dart:io';

///A class that contains static method of checking VPN connection
class CheckVpnConnection {

  ///Returns true if device has VPN connection
  static Future<bool> isVpnActive() async {
    bool isVpnActive;
    List<NetworkInterface> interfaces = await NetworkInterface.list(
        includeLoopback: false, type: InternetAddressType.any);
    interfaces.isNotEmpty
        ? isVpnActive = interfaces.any((interface) =>
            interface.name.contains("tun") ||
            interface.name.contains("ppp") ||
            interface.name.contains("pptp"))
        : isVpnActive = false;
    return isVpnActive;
  }
}
