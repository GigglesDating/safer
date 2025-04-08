import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabletLayoutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight * 6.84,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(244, 0, 0, 0),
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/Network_SVG.svg',
                  width: 600,
                  height: 600,
                ),
                SvgPicture.asset(
                  'assets/images/network_2.svg',
                  width: 600,
                  height: 600,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2150),
                  child: Image.asset('assets/images/Ellipse 3.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 750, right: 1000),
                  child: Image.asset('assets/images/Ellipse 3.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
