import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_vpn/splash_screen/splash_screen.dart';
import 'package:my_vpn/views/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
