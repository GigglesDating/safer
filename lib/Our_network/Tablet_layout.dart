import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/Home/Home.dart';
import 'package:giggles_safer_web/VolunteerForm/Volunteer_form_tablet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletLayoutNetwork extends StatefulWidget {
  const TabletLayoutNetwork({super.key});

  @override
  State<TabletLayoutNetwork> createState() => _TabletLayoutNetworkState();
}

class _TabletLayoutNetworkState extends State<TabletLayoutNetwork> {
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

  final Uri _instagramUrl = Uri.parse(
    'https://www.instagram.com/giggles_safer/',
  );

  Future<void> _launchInstagram() async {
    if (!await launchUrl(_instagramUrl, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_instagramUrl';
    }
  }

  final Uri _twitterurl = Uri.parse('https://x.com/GigglesSafer');

  Future<void> _launchTwitter() async {
    if (!await launchUrl(_twitterurl, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_twitterurl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;
        return Scaffold(
          backgroundColor: const Color.fromARGB(244, 0, 0, 0),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(child: Image.asset('assets/images/Ellipse 3.png')),
                    Row(
                      children: [
                        Spacer(),
                        Image.asset('assets/images/Ellipse 4.png'),
                      ],
                    ),
                    Image.asset('assets/images/Ellipse 2.png'),
                    Positioned(
                      bottom: 0,
                      child: Image.asset('assets/images/Ellipse 5.png'),
                    ),
                    Column(
                      children: [
                        _buildHeader(screenHeight, screenWidth),
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          height: screenHeight * 0.85,
                          width: screenWidth * 0.78,
                          color: Colors.transparent,
                          child: Image.asset(
                            'assets/images/Be-A-Volunteer.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.085),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Building a ',
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'SAFER ',
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 25,
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
                                    text: 'Tomorrow, Together.',
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.085),
                            Text(
                              'Our network is the heart of our mission—bringing together innovative\ntechnology, dedicated volunteers, and secure hubs to create a\nsupport system that women can rely on. With each connection, we\nstrengthen our reach and ability to provide real-time assistance and\nproactive safety measures.\n\nWe empower communities and ensure safety is always within reach.',
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.07),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.085),
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
                        SizedBox(height: screenHeight * 0.04),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.085),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  const Color.fromARGB(255, 219, 90, 210),
                                ),
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.025,
                                    vertical: screenHeight * 0.02,
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
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
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Line 6.png',
                                    fit: BoxFit.fitWidth,
                                    width: 645,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.085),
                            SizedBox(
                              height: 60,
                              child: Image.asset(
                                'assets/images/Social-Proof.png',
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "100+ people already joined",
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromARGB(255, 223, 126, 240),
                                fontSize: 15,
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
                          'Trained individuals providing ground support.',
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        _buildcard(
                          screenWidth,
                          screenHeight,
                          'assets/images/drones.svg',
                          'Rapid Response Drones',
                          'Reaching you in minutes.',
                          'AI-enabled drones designed for rapid response.',
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        _buildcard(
                          screenWidth,
                          screenHeight,
                          'assets/images/securehubs.svg',
                          '50+ Secure Hubs',
                          'Safety anytime, anywhere',
                          'Safe spaces designed to provide immediate assistance.',
                        ),

                        SizedBox(height: screenHeight * 0.3),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: _buildFooter(screenHeight, screenWidth),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showVolunteerForm() {
    showDialog(context: context, builder: (context) => VolunteerformTablet());
  }

  Widget _buildHeader(double screenHeight, double screenWidth) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.13,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(color: const Color.fromARGB(255, 223, 126, 240)),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: screenWidth * 0.085),
          Container(
            height: screenHeight * 0.18,
            width: screenWidth * 0.10,
            color: Colors.transparent,
            child: SvgPicture.asset('assets/images/Safer_logo.svg'),
          ),
          SizedBox(width: screenWidth * 0.20),
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
                fontSize: 20,
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
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
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
      height: screenHeight * 0.35,
      width: screenWidth * 0.8,
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
                  SvgPicture.asset(image),
                  Spacer(),
                  Text(
                    name,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 20,
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
                            fontSize: 16,
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
                            fontSize: 20,
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
                        horizontal: screenWidth * 0.025,
                        vertical: screenHeight * 0.02,
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
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
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
      height: screenHeight * 0.16,
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 255, 255).withAlpha(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            Container(
              height: screenHeight * 0.07,
              width: screenWidth * 0.8,
              color: Colors.transparent,
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/Safer_logo.svg'),
                  Spacer(),
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
                        fontSize: 20,
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
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: screenHeight * 0.06,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: const Color.fromARGB(255, 219, 90, 210),
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Text(
                    "© 2025 Safer | Privacy Policy | Terms of Service",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      _launchInstagram();
                    },
                    child: SvgPicture.asset('assets/images/InstagramLogo.svg'),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  InkWell(
                    onTap: () {
                      _launchTwitter();
                    },
                    child: SvgPicture.asset('assets/images/TwitterLogo.svg'),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/MetaLogo.svg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
