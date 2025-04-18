import 'package:flutter/material.dart';
import 'package:giggles_safer_web/Home/Home.dart';
import 'package:giggles_safer_web/Our_network/Our_network.dart';
import 'package:giggles_safer_web/VolunteerForm/Volunteer_form_desktop.dart';
import 'package:giggles_safer_web/VolunteerForm/Volunteer_form_mobile.dart';
import 'package:giggles_safer_web/VolunteerForm/Volunteer_form_tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OurNetwork(),
    );
  }
}
