import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:giggles_safer_web/volunteerForm/volunteer_form_tablet.dart';
import 'package:giggles_safer_web/knowMoreCard/knowMoreCardMobile.dart';

class TabletLayoutNetwork extends StatefulWidget {
  const TabletLayoutNetwork({super.key});

  @override
  State<TabletLayoutNetwork> createState() => _TabletLayoutNetworkState();
}

class _TabletLayoutNetworkState extends State<TabletLayoutNetwork> {
  // void _portraitmode() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitDown,
  //     DeviceOrientation.portraitUp,
  //   ]);
  // }

  @override
  void initState() {
    super.initState();
    // _portraitmode();
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

                        SizedBox(height: screenHeight * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: screenHeight * 0.05),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
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
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
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
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
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
                          'volunteers',
                          '5,000+ heroes on call',
                          'Trained individuals providing ground support.',
                          () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => KnowMoreMobile(
                                    name: 'Volunteers',
                                    text:
                                        "Every time someone presses the SOS button on Safer, we treat it with urgency. But what if the person doesn’t respond to our follow-up call? That’s when our nearest verified volunteer steps in as the first responder. Our system automatically detects the closest trained volunteer and routes them to check on the user in real time. Their job is simple yet crucial, physically verify the situation, assess if it’s an actual emergency, and immediately report back to our command center. Based on their on-ground input, a security guard is dispatched to the exact location if needed.\n\nThese volunteers don’t replace official responders, they accelerate the process. In those crucial first few minutes, they help reduce panic, prevent escalation, and guide us to act with precision. All volunteers are thoroughly vetted and trained in respectful, non-intrusive emergency support. Their presence adds a human layer of care, making sure no alert goes unanswered, even if the user is silent. With Safer, there’s always someone watching out for you, whether it’s a professional guard or a trusted local volunteer who gets there first.",
                                  ),
                            );
                          },
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        _buildcard(
                          screenWidth,
                          screenHeight,
                          'assets/images/drones.svg',
                          'Response Drones',
                          'Reaching you in minutes.',
                          'AI-enabled drones designed for rapid response.',
                          () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => KnowMoreMobile(
                                    name: 'Response Drones',
                                    text:
                                        "At Safer, we don’t believe in excuses, only solutions. If our ground staff cannot reach you within the promised 10-minute response time due to traffic, roadblocks, or unexpected delays, we immediately launch autonomous drones to your location. These high-speed, GPS-enabled drones act as your real-time guardians from above, providing instant visual surveillance and streaming live footage to our command center. Their presence alone is a powerful deterrent to potential threats, ensuring you’re never left vulnerable, even for a second. Equipped with night vision and real-time tracking, Safer drones don’t just observe, they communicate and assist. They alert our responders with exact coordinates, cutting through Bangalore’s chaos with precision.\n\nThis aerial safety net makes Safer not just a women’s safety app, but a tech-enabled movement that adapts to the unpredictable nature of urban emergencies. While others rely on static solutions, we’ve built a system that moves, flies, and responds with you. Because your safety should never be compromised, not by traffic, time, or anything else.",
                                  ),
                            );
                          },
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        _buildcard(
                          screenWidth,
                          screenHeight,
                          'assets/images/securehubs.svg',
                          'Secure Hubs',
                          'Safety anytime, anywhere',
                          'Safe spaces designed to provide immediate assistance.',
                          () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => KnowMoreMobile(
                                    name: 'Secure Hubs',
                                    text:
                                        "At the heart of Safer’s promise is our network of Secure Hubs, strategically located safety zones across Bangalore, staffed round-the-clock by trained security personnel. These hubs act as our rapid response bases, enabling us to reach you within 10 minutes of an SOS alert. Each hub is equipped with emergency support systems, high-speed communication tools, and standby responders ready to act at a moment’s notice. Whether it’s midnight or early morning, there’s always a Safer team nearby, ready to move. We’ve mapped the city down to its last lane to ensure no woman is ever left without help, whether she’s commuting late, stranded alone, or simply feeling unsafe. Unlike traditional systems that rely on centralised policing or delayed helplines, Secure Hubs are decentralised and proactive.\n\nThis isn’t just infrastructure, it’s a safety net woven into the fabric of the city. Because when every minute counts, your safety deserves to be local, responsive, and real. With Safer, you’re never alone. There’s always a Secure Hub, and a helping hand, close by.",
                                  ),
                            );
                          },
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
                MaterialPageRoute(builder: (context) => HomePage()),
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
    VoidCallback ontap,
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
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
                  onPressed: ontap,
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
                        MaterialPageRoute(builder: (context) => HomePage()),
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
