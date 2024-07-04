import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../const/images.dart';
import 'customText.dart';

Widget customButton(icon1,text11, text12, icon2, text21, text22) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Image.asset(
            icon1,
            height: 60,
            width: 60,
          ),
          7.heightBox,
          customText(text: text11,
              colorsReceive: Colors.black,
              fontSizeReceive: 17.0),
          customText(text: text12, colorsReceive: Colors.black)
        ],
      ),
      Column(
        children: [
          Image.asset(icon2, height: 60,
            width: 60,),
          7.heightBox,
          customText(text: text21,
              colorsReceive: Colors.black,
              fontSizeReceive: 17.0),
          customText(text: text22, colorsReceive: Colors.black)
        ],
      )
    ],
  );
}