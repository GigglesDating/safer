import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giggles_safer_web/our_network/desktop_layout.dart';
import 'package:giggles_safer_web/our_network/mobile_layout.dart';
import 'package:giggles_safer_web/our_network/tablet_layout.dart';

class OurNetwork extends StatefulWidget {
  const OurNetwork({super.key});

  @override
  State<OurNetwork> createState() => _OurNetworkState();
}

class _OurNetworkState extends State<OurNetwork> {
  void _portraitmode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void initState() {
    super.initState();
    _portraitmode();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth < 600) {
      return MobileLayoutNetwork(); // Phones
    } else if (screenWidth < 1200) {
      return TabletLayoutNetwork(); // Tablets
    } else {
      return DesktopLayoutNetwork(); // Desktops
    }
  }
}
