import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_vpn/common_widgets/customText.dart';
import 'package:my_vpn/const/screen.dart';
import 'package:my_vpn/const/strings.dart';
import 'package:my_vpn/views/home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.to(() => HomeScreen());
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          height: 40,
          margin: EdgeInsets.only(
              left: 10, right: 10, bottom: screenHeight(context) * 0.1),
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(
              child: customText(text: continueText, fontSizeReceive: 21.0)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Titan VPN',
            style: TextStyle(
              fontSize: 27,
              fontFamily: GoogleFonts.bonaNova().fontFamily,
              // color: Colors.green,
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Lottie.asset('assets/lottie/vpn_animation.json',
                  repeat: true)),
        ],
      ),
    );
  }
}
