import 'package:flutter/material.dart';
import 'package:giggles_safer_web/home/mobileLayout.dart';
import 'package:giggles_safer_web/home/tablet_layout.dart';
import 'package:giggles_safer_web/home/desktop_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void _portraitmode() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitDown,
  //     DeviceOrientation.portraitUp,
  //   ]);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _portraitmode();
  // }

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
