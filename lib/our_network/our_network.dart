import 'package:flutter/material.dart';
import 'package:giggles_safer_web/our_network/desktop_layout.dart';
import 'package:giggles_safer_web/our_network/mobile_layout.dart';
import 'package:giggles_safer_web/our_network/tablet_layout.dart';

class OurNetwork extends StatefulWidget {
  const OurNetwork({super.key});

  @override
  State<OurNetwork> createState() => _OurNetworkState();
}

class _OurNetworkState extends State<OurNetwork> {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return MobileLayoutNetwork(); // Phones
    } else if (screenWidth < 1200) {
      return TabletLayoutNetwork(); // Tablets
    } else {
      return DesktopLayoutNetwork(); // Desktops
    }
  }
}
