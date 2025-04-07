import 'package:flutter/material.dart';

class MobileLayoutAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile View")),
      body: Center(child: Text("This is a mobile layout")),
    );
  }
}