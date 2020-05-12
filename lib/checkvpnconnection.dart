library checkvpnconnection;

import 'dart:io';

class CheckVpnConnection {
  static bool isVpnActive() {
    bool isVpnActive;
    NetworkInterface.list(includeLoopback: false, type: InternetAddressType.any)
        .then((List<NetworkInterface> interfaces) {
      if (interfaces.isNotEmpty) {
        return isVpnActive = interfaces.any((interface) =>
            interface.name.contains("tun") ||
            interface.name.contains("ppp") ||
            interface.name.contains("pptp"));
      } else
        return isVpnActive = false;
    });
    return isVpnActive;
  }
}
