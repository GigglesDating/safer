// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:giggles_safer_web/About_us/Desktop_layout.dart';
// import 'package:giggles_safer_web/About_us/Mobile_layout.dart';
// import 'package:giggles_safer_web/About_us/Tablet_layout.dart';

// class AboutUs extends StatefulWidget {
//   const AboutUs({super.key});

//   @override
//   State<AboutUs> createState() => _AboutUsState();
// }

// class _AboutUsState extends State<AboutUs> {
//   void _portraitmode() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitDown,
//       DeviceOrientation.portraitUp,
//     ]);
//   }

//   @override
//   void initState() {
//     super.initState();
//     _portraitmode();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     // final screenHeight = MediaQuery.of(context).size.height;
//     if (screenWidth < 600) {
//       return MobileLayoutAbout(); // Phones
//     } else if (screenWidth < 1200) {
//       return TabletLayoutAbout(); // Tablets
//     } else {
//       return TabletLayoutAbout(); // Desktops
//     }
//   }
// }
