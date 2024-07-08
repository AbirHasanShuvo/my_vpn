import 'package:get/get.dart';
import 'package:my_vpn/models/vpn_info.dart';
import 'package:my_vpn/views/app_preferences/app_preferences.dart';

class HomeController extends GetxController {
  final Rx<VpnInfo> vpnInfo = AppPreferences.vpnInfoObj.obs;

}
