import 'package:flutter/material.dart';

class MobileLayoutNetwork extends StatefulWidget {
  const MobileLayoutNetwork({super.key});

  @override
  State<MobileLayoutNetwork> createState() => _MobileLayoutNetworkState();
}

class _MobileLayoutNetworkState extends State<MobileLayoutNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile View")),
      body: Center(child: Text("This is a mobile layout")),
    );
  }
}