library check_vpn_connection;

import 'dart:io';

///A class that contains static method of checking VPN connection
class CheckVpnConnection {
  ///Returns true if device has VPN connection
  Future<bool> isVpnActive() async {
    try {
      final interfaces = await NetworkInterface.list(
        includeLoopback: false,
        type: InternetAddressType.any,
      );
      return interfaces.any((interface) => [
            "tun",
            "tap",
            "ppp",
            "pptp",
            "l2tp",
            "ipsec",
            "vpn"
          ].any((pattern) => interface.name.toLowerCase().contains(pattern)));
    } catch (e) {
      // Handle exceptions, e.g., if the network interface list cannot be retrieved
      rethrow;
    }
  }
}
