import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.phone_android),
        ),
        title: Text(
          'My VPN',
          style: TextStyle(fontFamily: GoogleFonts.lato().fontFamily),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.brightness_2_outlined))
        ],
      ),
      bottomNavigationBar: ,
    );
  }
}
