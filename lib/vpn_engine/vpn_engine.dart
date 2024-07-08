import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:my_vpn/models/vpn_configuration.dart';
import 'package:my_vpn/models/vpn_status.dart';

class vpnEngine {
  //native channel

  static final String eventChannelVpnStage = 'vpnStage';
  static final String eventChannelVpnStatus = 'vpnStatus';
  static final String methodChannelVpnControl = 'vpnControl';

  //vpn connection stage snapshot

  static Stream<String> snapshotVpnStage() =>
      EventChannel(eventChannelVpnStage).receiveBroadcastStream().cast();

  //vpn connection status snapshot
  static Stream<VpnStatus?> snapshotVpnStatus() =>
      EventChannel(eventChannelVpnStatus)
          .receiveBroadcastStream()
          .map((eventStatus) => VpnStatus.fromJson(jsonDecode(eventStatus)))
          .cast();

  static Future<void> startVpnNow(VpnConfiguration vpnConfiguration) {
    return MethodChannel(methodChannelVpnControl).invokeMethod("start", {
      "config": vpnConfiguration.config,
      "country": vpnConfiguration.countryName,
      "username": vpnConfiguration.username,
      "password": vpnConfiguration.password
    });
  }

  static Future<void> stopVpnNow() {
    return MethodChannel(methodChannelVpnControl).invokeMethod('stop');
  }
}
