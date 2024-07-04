import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_vpn/common_widgets/customText.dart';
import 'package:my_vpn/const/images.dart';
import 'package:my_vpn/const/strings.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_widgets/customText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone_android,
            color: Colors.white,
          ),
        ),
        title: Text(
          'My VPN',
          style: TextStyle(
              fontFamily: GoogleFonts.lato().fontFamily, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.brightness_2_outlined,
                color: Colors.white,
              ))
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          VxToast.show(context, msg: 'Its working');
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(countryIcon),
                Text(
                  selectCountry,
                  style: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  tapIcon,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(20),
                radius: 20,
                onTap: () {},
                child: Column(
                  children: [
                    Image.asset(
                      locationIcon,
                      height: 60,
                      width: 60,
                    ),
                    7.heightBox,
                    customText(
                        text: locationText,
                        colorsReceive: Colors.black,
                        fontSizeReceive: 17.0),
                    customText(text: locationHint, colorsReceive: Colors.black)
                  ],
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                radius: 20,
                onTap: () {},
                child: Column(
                  children: [
                    Image.asset(
                      pingIcon,
                      height: 60,
                      width: 60,
                    ),
                    7.heightBox,
                    customText(
                        text: pingText,
                        colorsReceive: Colors.black,
                        fontSizeReceive: 17.0),
                    customText(text: pingHint, colorsReceive: Colors.black)
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green),
              child: Image.asset(
                powerIcon,
                width: 80,
                height: 80,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                radius: 20,
                child: Column(
                  children: [
                    Image.asset(
                      downloadIcon,
                      height: 60,
                      width: 60,
                    ),
                    7.heightBox,
                    customText(
                        text: downloadText,
                        colorsReceive: Colors.black,
                        fontSizeReceive: 17.0),
                    customText(text: downloadHint, colorsReceive: Colors.black)
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                radius: 20,
                child: Column(
                  children: [
                    Image.asset(
                      uploadIcon,
                      height: 60,
                      width: 60,
                    ),
                    7.heightBox,
                    customText(
                        text: uploadText,
                        colorsReceive: Colors.black,
                        fontSizeReceive: 17.0),
                    customText(text: uploadHint, colorsReceive: Colors.black)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
