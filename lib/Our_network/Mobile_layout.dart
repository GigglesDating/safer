import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/About_us/About_us.dart';
import 'package:giggles_safer_web/Home/Home.dart';
import 'package:giggles_safer_web/Our_network/our_network.dart';
import 'package:giggles_safer_web/VolunteerForm/Volunteer_form_mobile.dart';
import 'package:giggles_safer_web/VolunteerForm/Volunteer_form_tablet.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileLayoutNetwork extends StatefulWidget {
  const MobileLayoutNetwork({super.key});

  @override
  State<MobileLayoutNetwork> createState() => _MobileLayoutNetworkState();
}

class _MobileLayoutNetworkState extends State<MobileLayoutNetwork> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;
        return SafeArea(
          child: Scaffold(
            backgroundColor: const Color.fromARGB(244, 0, 0, 0),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.02),
                  _buildHeader(screenHeight, screenWidth),
                  Stack(
                    children: [
                      Image.asset('assets/images/Ellipse 2.png'),
                      Row(
                        children: [
                          Spacer(),
                          SizedBox(
                            width: screenWidth * 0.8,
                            child: Image.asset('assets/images/Ellipse 4.png'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: screenHeight * 0.02),
                          Center(
                            child: Container(
                              height: screenHeight * 0.5,
                              width: screenWidth * 0.8,
                              color: Colors.transparent,
                              child: Image.asset(
                                'assets/images/Be-A-Volunteer.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.05),
                          SizedBox(width: screenWidth * 0.085),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Building a ',
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: 'SAFER ',
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(
                                      255,
                                      223,
                                      126,
                                      240,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Tomorrow,\nTogether.',
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              SizedBox(width: screenWidth * 0.085),
                              Text(
                                'Our network is the heart of our mission—bringing\ntogether innovative technology, dedicated\nvolunteers, and secure hubs to create a support\nsystem that women can rely on. With each\nconnection, we strengthen our reach and ability\nto provide real-time assistance and proactive\nsafety measures.\n\nWe empower communities and ensure safety is\nalways within reach.',
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                "'Together, We Make A Difference'",
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              SizedBox(width: screenWidth * 0.08),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    const Color.fromARGB(255, 219, 90, 210),
                                  ),
                                  padding: WidgetStatePropertyAll(
                                    EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.025,
                                      vertical: screenHeight * 0.012,
                                    ),
                                  ),
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  _showVolunteerForm();
                                },
                                child: Text(
                                  "Be A Volunteer Now",
                                  style: GoogleFonts.spaceGrotesk(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              SizedBox(width: screenWidth * 0.085),
                              SizedBox(
                                height: 36,
                                width: screenWidth * 0.8,
                                child: Image.asset(
                                  'assets/images/Line 6.png',
                                  fit: BoxFit.fitWidth,
                                  width: 340,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              SizedBox(width: screenWidth * 0.08),
                              SizedBox(
                                height: 40,
                                child: Image.asset(
                                  'assets/images/Social-Proof.png',
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "100+ people already joined",
                                style: GoogleFonts.spaceGrotesk(
                                  color: const Color.fromARGB(
                                    255,
                                    223,
                                    126,
                                    240,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.05),
                          _buildcard(
                            screenWidth,
                            screenHeight,
                            'assets/images/dedicated_volunteer.svg',
                            'Dedicated volunteers',
                            '5,000+ heroes on call',
                            'Trained individuals providing\nground support.',
                          ),
                          SizedBox(height: screenHeight * 0.05),
                          _buildcard(
                            screenWidth,
                            screenHeight,
                            'assets/images/drones.svg',
                            'Rapid Response Drones',
                            'Reaching you in minutes.',
                            'AI-enabled drones designed for\nrapid response.',
                          ),
                          SizedBox(height: screenHeight * 0.05),
                          _buildcard(
                            screenWidth,
                            screenHeight,
                            'assets/images/securehubs.svg',
                            '50+ Secure Hubs',
                            'Safety anytime, anywhere',
                            'Safe spaces designed to provide\nimmediate assistance.',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: _buildFooter(screenHeight, screenWidth),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showVolunteerForm() {
    showDialog(context: context, builder: (context) => VolunteerformMobile());
  }

  Widget _buildHeader(double screenHeight, double screenWidth) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.10,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(color: const Color.fromARGB(255, 223, 126, 240)),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: screenWidth * 0.085),
            Container(
              height: screenHeight * 0.10,
              width: screenWidth * 0.20,
              color: Colors.transparent,
              child: SvgPicture.asset('assets/images/Safer_logo.svg'),
            ),
            SizedBox(width: screenWidth * 0.02),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homePage()),
                );
              },
              child: Text(
                "Home",
                style: GoogleFonts.spaceGrotesk(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
              child: Text(
                "About us",
                style: GoogleFonts.spaceGrotesk(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Our Network",
                style: GoogleFonts.spaceGrotesk(
                  color: const Color.fromARGB(255, 223, 126, 240),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildcard(
    double screenWidth,
    double screenHeight,
    String image,
    String name,
    String subcontent,
    String content,
  ) {
    return Container(
      height: screenHeight * 0.32,
      width: screenWidth * 0.85,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        border: Border.all(
          color: const Color.fromARGB(255, 223, 126, 240).withAlpha(100),
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 0,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(image, height: screenHeight * 0.05),
                  Spacer(),
                  Text(
                    name,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 223, 126, 240),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Container(
              height: screenHeight * 0.11,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color.fromARGB(
                      255,
                      223,
                      126,
                      240,
                    ).withAlpha(100),
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          subcontent,
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          content,
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 25),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 219, 90, 210),
                    ),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.02,
                        vertical: screenHeight * 0.015,
                      ),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Click here to know more",
                    style: GoogleFonts.spaceGrotesk(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(double screenHeight, double screenWidth) {
    return Container(
      // height: screenHeight * 0.3,
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 255, 255).withAlpha(15),
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.02),
          Container(
            color: Colors.transparent,
            child: Row(
              children: [
                SizedBox(width: screenWidth * 0.08),
                Container(
                  color: Colors.transparent,
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.2,
                  child: SvgPicture.asset('assets/images/Safer_logo.svg'),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: screenHeight * 0.18,
            width: screenWidth * 0.8,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: const Color.fromARGB(255, 219, 90, 210)),
              ),
              color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homePage()),
                          );
                        },
                        child: Text(
                          "Home",
                          style: GoogleFonts.spaceGrotesk(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AboutUs()),
                          );
                        },
                        child: Text(
                          "About us",
                          style: GoogleFonts.spaceGrotesk(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Our Network",
                          style: GoogleFonts.spaceGrotesk(
                            color: const Color.fromARGB(255, 223, 126, 240),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    "© 2025 Safer | Privacy Policy | Terms of Service",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/images/InstagramLogo.svg',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/images/TwitterLogo.svg'),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/images/MetaLogo.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
