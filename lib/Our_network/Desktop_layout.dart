import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/About_us/About_us.dart';
import 'package:giggles_safer_web/Home/Home.dart';
import 'package:giggles_safer_web/VolunteerForm/Volunteer_form_desktop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopLayoutNetwork extends StatefulWidget {
  const DesktopLayoutNetwork({super.key});

  @override
  State<DesktopLayoutNetwork> createState() => _DesktopLayoutNetworkState();
}

class _DesktopLayoutNetworkState extends State<DesktopLayoutNetwork> {
  final Uri _instagramUrl = Uri.parse(
    'https://www.instagram.com/_so_called_abhi_shek/',
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                  top: screenHeight * 0.41,
                  child: Image.asset('assets/images/Ellipse 5.png'),
                ),
                _buildHeader(screenHeight, screenWidth),
                Positioned(
                  top: screenHeight * 0.2,
                  left: screenWidth * 0.075,
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.75,
                        width: screenWidth * 0.84,
                        color: Colors.transparent,
                        child: SingleChildScrollView(
                          child: Stack(
                            children: [
                              AspectRatio(
                                aspectRatio: 20 / 9,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    color: Colors.transparent,
                                    height: screenHeight * 0.75,
                                    child: Image.asset(
                                      'assets/images/Be-A-Volunteer.png',
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: screenHeight * 0.045),
                                  Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Building a ',
                                              style: GoogleFonts.spaceMono(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'SAFER ',
                                              style: GoogleFonts.spaceMono(
                                                fontSize: 30,
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
                                                fontSize: 30,
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
                                      Text(
                                        'Our network is the heart of our mission—bringing together\ninnovative technology, dedicated volunteers, and secure hubs\nto create a support system that women can rely on. With each\nconnection, we strengthen our reach and ability to provide\nreal-time assistance and proactive safety measures.\n\nWe empower communities and ensure safety is always within\nreach.',
                                        style: GoogleFonts.spaceGrotesk(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.03),
                                  Row(
                                    children: [
                                      Text(
                                        "'Together, We Make A Difference'",
                                        style: GoogleFonts.spaceGrotesk(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.02),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                const Color.fromARGB(
                                                  255,
                                                  219,
                                                  90,
                                                  210,
                                                ),
                                              ),
                                          padding: WidgetStatePropertyAll(
                                            EdgeInsets.symmetric(
                                              horizontal: screenWidth * 0.021,
                                              vertical: screenHeight * 0.027,
                                            ),
                                          ),
                                          shape: WidgetStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
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
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 36,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/Line 6.png',
                                          fit: BoxFit.fitWidth,
                                          width: 675,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
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
                                          color: const Color.fromARGB(
                                            255,
                                            223,
                                            126,
                                            240,
                                          ),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.074),
                      Row(
                        children: [
                          _buildcard(
                            screenWidth,
                            screenHeight,
                            'assets/images/dedicated_volunteer.svg',
                            'Dedicated volunteers',
                            '5,000+ heroes on call',
                            'Trained individuals providing\nground support.',
                          ),
                          SizedBox(width: screenWidth * 0.032),
                          _buildcard(
                            screenWidth,
                            screenHeight,
                            'assets/images/drones.svg',
                            'Rapid Response Drones',
                            'Reaching you in minutes.',
                            'AI-enabled drones designed for\nrapid response.',
                          ),
                          SizedBox(width: screenWidth * 0.032),
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
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildFooter(screenHeight, screenWidth),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(double screenHeight, double screenWidth) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.15,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(color: const Color.fromARGB(255, 223, 126, 240)),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: screenWidth * 0.07),
          Container(
            height: screenHeight * 0.11,
            width: screenWidth * 0.05,
            color: Colors.transparent,
            child: SvgPicture.asset('assets/images/Safer_logo.svg'),
          ),
          SizedBox(width: screenWidth * 0.32),
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

  Widget _buildFooter(double screenHeight, double screenWidth) {
    return Container(
      height: screenHeight * 0.27,
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 255, 255).withAlpha(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.055),
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
              height: screenHeight * 0.132,
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
                  SvgPicture.asset('assets/images/MetaLogo.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showVolunteerForm() {
    showDialog(context: context, builder: (context) => Volunteerform());
  }
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
    height: screenHeight * 0.53,
    width: screenWidth * 0.26,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.06),
      border: Border.all(
        color: const Color.fromARGB(255, 223, 126, 240).withAlpha(100),
      ),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Row(
            children: [
              SvgPicture.asset(image),
              Spacer(),
              Expanded(
                child: AutoSizeText(
                  name,
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 223, 126, 240),
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.22,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: const Color.fromARGB(255, 223, 126, 240).withAlpha(100),
              ),
            ),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subcontent,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    content,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
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
                    horizontal: screenWidth * 0.016,
                    vertical: screenHeight * 0.023,
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
  );
}
