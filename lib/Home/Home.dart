import 'package:flutter/material.dart';
import 'package:giggles_safer_web/Home/Desktop_layout.dart';
import 'package:giggles_safer_web/Home/MobileLayout.dart';
import 'package:giggles_safer_web/Home/Tablet_layout.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth < 600) {
      return MobileLayoutHome(); // Phones
    } else if (screenWidth < 1200) {
      return TabletLayoutHome(); // Tablets
    } else {
      return DesktopLayoutHome(); // Desktops
    }
  }
}