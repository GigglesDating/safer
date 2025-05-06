import 'dart:html' as html;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/our_network/our_network.dart';
import 'package:giggles_safer_web/services/subscribe_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class TabletLayoutHome extends StatefulWidget {
  const TabletLayoutHome({super.key});

  @override
  State<TabletLayoutHome> createState() => _TabletLayoutHomeState();
}

class _TabletLayoutHomeState extends State<TabletLayoutHome> {
  late VideoPlayerController _introController;
  bool _isIntroPlaying = false;
  bool _isSubmitting = false;
  final SubscriberService _subscriberService = SubscriberService();

  void _log(String message) {
    html.window.console.log(message);
    debugPrint(message);
  }

  @override
  void initState() {
    super.initState();
    // _portraitmode();
    // Initialize with your video URL
    _introController = VideoPlayerController.asset('assets/video/phVideo2.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    // Add listener for video completion
    _introController.addListener(() {
      if (_introController.value.position >= _introController.value.duration) {
        _introController.seekTo(Duration.zero);
        _introController.play();
      }
    });
    _testSupabaseConnection();
  }

  @override
  void dispose() {
    _introController.dispose();
    super.dispose();
  }

  Future<void> _testSupabaseConnection() async {
    try {
      await _subscriberService.testConnection();
    } catch (e) {
      _log('Failed to connect to Supabase: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Warning: Database connection issue. Please try again later.',
            ),
            backgroundColor: Colors.orange,
            duration: Duration(seconds: 5),
          ),
        );
      }
    }
  }

  void playpause() {
    // if (!_introController.value.isInitialized) return;
    setState(() {
      _isIntroPlaying = !_isIntroPlaying;
      // _introController.play();
      if (_isIntroPlaying) {
        _introController.play();
      }
      if (!_isIntroPlaying) {
        _introController.pause();
      }
    });
  }

  final Uri _instagramUrl = Uri.parse(
    'https://www.instagram.com/gigglessafer/',
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

  Future<void> launchEmail() async {
    final String subject = Uri.encodeComponent('Customer Support Enquiry');
    final String body = Uri.encodeComponent('');

    final Uri emailLaunchUri = Uri.parse(
      'mailto:admin@gigglessafer.com?subject=$subject&body=$body',
    );

    if (!await launchUrl(
      emailLaunchUri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  final TextEditingController _subEmail = TextEditingController();

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
                    Padding(
                      padding: const EdgeInsets.only(top: 980),
                      child: SvgPicture.asset(
                        'assets/images/Network_SVG.svg',
                        width: 600,
                        height: 600,
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 1890),
                          child: SvgPicture.asset(
                            'assets/images/network_2.svg',
                            width: 600,
                            height: 600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1750, left: 940),
                      child: SvgPicture.asset(
                        'assets/images/network_2.svg',
                        width: 600,
                        height: 600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2150),
                      child: Image.asset('assets/images/Ellipse 3.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2900, left: 300),
                      child: Image.asset('assets/images/Ellipse 3.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3000),
                      child: Image.asset(
                        'assets/images/Ellipse 3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          height: screenHeight * 0.95,
                          width: screenWidth * 0.964,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                          ),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.95,
                                width: screenWidth * 0.964,
                                child: Image.asset(
                                  'assets/images/Tablet_layout.png',
                                  fit: BoxFit.fill,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                child: Container(
                                  height: screenHeight * 0.12,
                                  width: screenWidth * 0.13,
                                  color: Colors.transparent,
                                  child: SvgPicture.asset(
                                    'assets/images/Safer_logo.svg',
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                              ),

                              SizedBox(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 50,
                                          left: 250,
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Home",
                                            style: GoogleFonts.spaceGrotesk(
                                              color: const Color.fromARGB(
                                                255,
                                                223,
                                                126,
                                                240,
                                              ),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 50,
                                          left: 15,
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder:
                                                    (context) => OurNetwork(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Our Network",
                                            style: GoogleFonts.spaceGrotesk(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 280),
                                  child: Text(
                                    "Empowering Safety, Anytime,\nAnywhere.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 37,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: screenHeight * 0.23,
                                  width: screenWidth * 0.4,
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Introducing Safer",
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                              255,
                                              211,
                                              84,
                                              173,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.01),
                                        Text(
                                          "Empowering women with real-time safety through drones and secure hubs.Help is always just a click away.",
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        SizedBox(
                          child: Container(
                            width: screenWidth,
                            height: 60,
                            decoration: BoxDecoration(color: Colors.white10),
                            child: CarouselSlider(
                              items: [
                                _buildCarouselItem(' CONFIDENCE', screenWidth),
                                _buildCarouselItem('     SAFETY', screenWidth),
                                _buildCarouselItem('      TRUST', screenWidth),
                                _buildCarouselItem(' INNOVATION', screenWidth),
                                _buildCarouselItem('   SECURITY', screenWidth),
                                _buildCarouselItem(' RELIABILITY', screenWidth),
                                _buildCarouselItem(' ASSISTANCE', screenWidth),
                                _buildCarouselItem(' COMMUNITY', screenWidth),
                              ],
                              options: CarouselOptions(
                                height: 60,
                                viewportFraction: 0.145,
                                autoPlay: true,
                                autoPlayInterval: Duration(milliseconds: 1000),
                                autoPlayAnimationDuration: Duration(
                                  milliseconds: 2000,
                                ),
                                autoPlayCurve: Curves.linear,
                                pauseAutoPlayOnTouch: false,
                                pauseAutoPlayOnManualNavigate: false,
                                pauseAutoPlayInFiniteScroll: false,
                                enableInfiniteScroll: true,
                                aspectRatio: 2.0,
                                enlargeCenterPage: false,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Stack(
                          children: [
                            Container(
                              height: screenHeight * 0.80,
                              width: screenWidth * 0.80,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255,
                                  223,
                                  126,
                                  240,
                                ).withAlpha(70),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(150),
                                  bottomRight: Radius.circular(150),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Container(
                                height: screenHeight * 0.80,
                                width: screenWidth * 0.80,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      223,
                                      126,
                                      240,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    bottomRight: Radius.circular(150),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    bottomRight: Radius.circular(150),
                                  ),
                                  child: SizedBox(
                                    height: screenHeight * 0.73,
                                    width: screenWidth * 0.8,
                                    child:
                                        _introController.value.isInitialized
                                            ? FittedBox(
                                              fit: BoxFit.cover,
                                              child: SizedBox(
                                                width:
                                                    _introController
                                                        .value
                                                        .size
                                                        .width,
                                                height:
                                                    _introController
                                                        .value
                                                        .size
                                                        .height,
                                                child: VideoPlayer(
                                                  _introController,
                                                ),
                                              ),
                                            )
                                            : const Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: IconButton(
                                onPressed: () {
                                  playpause();
                                },
                                icon:
                                    _isIntroPlaying
                                        ? SizedBox()
                                        : Icon(
                                          Icons.play_circle_outline,
                                          color: Colors.white,
                                          size: 80,
                                        ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.088),
                                Text(
                                  "WHO WE ARE",
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.088),
                                Container(
                                  color: Colors.transparent,
                                  width: screenWidth * 0.8,
                                  child: Text(
                                    //"We're Safer, a technology-driven safety platform dedicated to\nempowering women. Our journey began with the vision to provide\nreal-time assistance through drones and secure hubs, ensuring no\nwoman ever feels unsafe. We're not just building a product— we're\nbuilding trust, security, and a community that stands together for\nwomen's safety.",
                                    "We are Safer, a women-first safety network built to respond when it matters most. Born out of the urgent need for real-time safety solutions, Safer is more than just an app, it’s a promise. A promise that no woman should ever feel alone or helpless in a moment of fear or danger. Whether it’s an emergency on the street, during a commute, or in a public space, help is always just a tap away.",
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.088),
                                Text(
                                  "Our mission",
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(
                                      255,
                                      223,
                                      126,
                                      240,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.088),
                                Container(
                                  width: screenWidth * 0.8,
                                  color: Colors.transparent,
                                  child: Text(
                                    // "To make safety accessible, reliable, and innovative for every woman,everywhere.",
                                    "At Safer, we understand that safety shouldn’t be a luxury, it should be a guarantee. Our mission is simple: to make sure that every woman has help just a tap away, whenever and wherever she needs it. When a woman reaches out for help, we ensure that someone is always there to respond fast, and without a question.",
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 100,
                                    width: screenWidth * 0.333,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border(
                                        right: BorderSide(
                                          color: const Color.fromARGB(
                                            255,
                                            223,
                                            126,
                                            240,
                                          ).withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '10k+',
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 55,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromARGB(
                                              255,
                                              223,
                                              126,
                                              240,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'App Downloads',
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: screenWidth * 0.333,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border(
                                        right: BorderSide(
                                          color: const Color.fromARGB(
                                            255,
                                            223,
                                            126,
                                            240,
                                          ).withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '120+',
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 55,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromARGB(
                                              255,
                                              223,
                                              126,
                                              240,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Safe Interventions',
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: screenWidth * 0.333,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '15+',
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 55,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromARGB(
                                              255,
                                              223,
                                              126,
                                              240,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Cities Covered',
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: 15,
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
                            SizedBox(height: screenHeight * 0.05),
                            Center(
                              child: Container(
                                height: 100,
                                width: screenWidth * 0.333,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "300+",
                                      style: GoogleFonts.spaceMono(
                                        fontSize: 55,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromARGB(
                                          255,
                                          223,
                                          126,
                                          240,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Secure Hubs",
                                      style: GoogleFonts.spaceGrotesk(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Stack(
                          children: [
                            Container(
                              height: screenHeight * 0.80,
                              width: screenWidth * 0.80,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255,
                                  223,
                                  126,
                                  240,
                                ).withAlpha(70),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(150),
                                  bottomRight: Radius.circular(150),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Container(
                                height: screenHeight * 0.80,
                                width: screenWidth * 0.80,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      223,
                                      126,
                                      240,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    bottomRight: Radius.circular(150),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    bottomRight: Radius.circular(150),
                                  ),
                                  child: Image.asset(
                                    'assets/images/Our Network.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Our Network",
                              style: GoogleFonts.spaceMono(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth * 0.8,
                              child: Text(
                                // "Safer operates through a growing network of advanced drones and\nstrategically placed secure hubs, ensuring rapid response and\nreliable support. With coverage expanding across cities, we are\ndedicated to creating a safety net that empowers women wherever\nthey are.",
                                "Across the city, our secure hubs operate 24/7 with trained security personnel who can reach the scene within minutes. If there’s a delay or the location is hard to access, our verified volunteers — trusted members of the community — step in to support. In situations where visibility is limited or immediate assessment is needed, our drone units provide live visual coverage from above. And behind every SOS alert is a customer support team that responds right away,confirms the situation, and coordinates help without hesitation.",
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Colors.white,
                                ),
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.025,
                                    vertical: screenHeight * 0.01,
                                  ),
                                ),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OurNetwork(),
                                  ),
                                );
                              },
                              child: Text(
                                "Read more",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * 0.02,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Testimonials",
                              style: GoogleFonts.spaceMono(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            _buildTestimonial(
                              'assets/images/testimonial1.jpg',
                              "Knowing there's a secure hub nearby makes me feel\n                      safer when I'm out alone.",
                              '-shreya Sharma',
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            _buildTestimonial(
                              'assets/images/testimonial2.jpg',
                              '"Safer gave me peace of mind during a late-night\n    commute. The quick response was incredible!"',
                              '-Neha Sharma',
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            _buildTestimonial(
                              'assets/images/testimonial3.jpg',
                              "The drone assistance feature is a game-changer for\n            women's safety. Thank you, Safer!",
                              '-Arpita Singh',
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Stack(
                          children: [
                            Container(
                              height: screenHeight * 0.80,
                              width: screenWidth * 0.80,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255,
                                  223,
                                  126,
                                  240,
                                ).withAlpha(70),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(150),
                                  bottomRight: Radius.circular(150),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Container(
                                height: screenHeight * 0.80,
                                width: screenWidth * 0.80,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      223,
                                      126,
                                      240,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    bottomRight: Radius.circular(150),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    bottomRight: Radius.circular(150),
                                  ),
                                  child: Image.asset(
                                    'assets/images/Download_app.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get the App",
                              style: GoogleFonts.spaceMono(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth * 0.8,
                              child: Text(
                                // "Your safety is just a tap away! Download the Safer app now on the\nPlay Store and App Store to access real-time assistance, secure hubs,\nand more—anytime, anywhere.",
                                "Thousands are already on Safer. Are you?\n\nJoin the growing network of women who refuse to walk alone. One tap connects you to real-time help",
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: SizedBox(
                                    height: 55,
                                    // width: 250,
                                    child: Image.asset(
                                      'assets/images/playstore.png',
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 230),
                                  child: InkWell(
                                    onTap: () {},
                                    child: SizedBox(
                                      height: 55,
                                      // width: 250,
                                      child: Image.asset(
                                        'assets/images/appstore.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Common Questions",
                              style: GoogleFonts.spaceMono(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            _buildAnswers(
                              'How quickly can a drone or secure hub respond in an emergency?',
                              Text(
                                " Once the SOS button is pressed in the Safer App, a drone is immediately activated and will reach the location within minutes. A secure hub personnel is also dispatched and typically arrives at the scene within 10 minutes of the alert.",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            _buildAnswers(
                              'What is a secure hub, and how do i locate one near me?',
                              Text(
                                " A secure hub is Safer's on-ground interconnected support team, ready to assist users during emergencies or unsafe situations. To find one near you, simply press the SOS button in the Safer App, and help will be dispatched to your location.",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            _buildAnswers(
                              'Are the drones equipped with cameras or tracking devices?',
                              Text(
                                " Yes, Safer's drones are equipped with cameras and tracking devices. Once the drone identifies you, it will follow you to ensure continuous monitoring, capturing footage for legal evidence, and helping responders locate you quickly and accurately.",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            _buildAnswers(
                              ' Is my data safe and secure?',
                              Text(
                                " Yes, your data is completely safe and secure with us. We use advanced encryption protocols and follow strict privacy policies to ensure that your personal information remains protected at all times. Your safety and trust are our top priorities.",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            _buildAnswers(
                              'Is there a customer support helpline available?',
                              Wrap(
                                children: [
                                  Text(
                                    " Yes, Safer offers 24/7 customer support to ensure user safety and assist with any concerns at any time. You can reach us anytime at",
                                    style: GoogleFonts.spaceGrotesk(
                                      color: Colors.white70,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: launchEmail,
                                    child: Text(
                                      'admin@gigglessafer.com',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromARGB(
                                          255,
                                          223,
                                          126,
                                          240,
                                        ),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _buildAnswers(
                              'Does the app work without an internet connection?',
                              Text(
                                " No, the app requires an active internet connection to function properly. We recommend staying within network coverage to ensure access to all safety features when needed.",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: Container(
                            height: screenHeight * 0.5,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border(
                                top: BorderSide(
                                  color: const Color.fromARGB(
                                    255,
                                    223,
                                    126,
                                    240,
                                  ),
                                ),
                                // bottom: BorderSide(
                                //   color: const Color.fromARGB(255, 223, 126, 240),
                                // ),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/Stay-in-touch.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: Container(
                            // height: screenHeight * 0.45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ).withAlpha(15),
                              border: Border(
                                // top: BorderSide(
                                //   color: const Color.fromARGB(255, 219, 90, 210),
                                // ),
                                bottom: BorderSide(
                                  color: const Color.fromARGB(
                                    255,
                                    219,
                                    90,
                                    210,
                                  ).withOpacity(0.3),
                                ),
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Stay in Touch",
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 45,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: screenWidth * 0.8,
                                          child: Text(
                                            // "Subscribe to Safer for updates, safety tips, and the latest features. Join our mission to create a safer world—one step\nat a time!",
                                            "Be the first to know about new features, safety tips, and city-wide updates. We don’t spam, just the stuff that matters.",
                                            style: GoogleFonts.spaceGrotesk(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
                                        SizedBox(
                                          width: screenWidth * 0.80,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              right: 220,
                                            ),
                                            child: TextField(
                                              controller: _subEmail,
                                              style: TextStyle(
                                                color: Colors.white70,
                                              ),
                                              decoration: InputDecoration(
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                      horizontal:
                                                          screenWidth * 0.015,
                                                      vertical:
                                                          screenHeight * 0.025,
                                                    ),
                                                hintText: 'Enter your email id',
                                                hintStyle: TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 18,
                                                ),
                                                filled: true,
                                                fillColor: Colors.black
                                                    .withAlpha(120),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
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
                                                horizontal: screenWidth * 0.025,
                                                vertical: screenHeight * 0.01,
                                              ),
                                            ),
                                            shape: WidgetStatePropertyAll(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            _submitSubscriber();
                                          },
                                          child: Text(
                                            "Subscribe",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
                                        Text(
                                          "Your information will remain 100% secure and confidential,\nprotectedwith the highest standards of privacy and security.",
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: double.infinity,
                                    height: screenHeight * 0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border(
                                        top: BorderSide(
                                          color: const Color.fromARGB(
                                            255,
                                            223,
                                            126,
                                            240,
                                          ).withAlpha(40),
                                        ),
                                      ),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: screenHeight * 0.018,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: screenWidth * 0.05,
                                              ),
                                              Text(
                                                "Follow us on",
                                                style: GoogleFonts.spaceGrotesk(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.1,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: SvgPicture.asset(
                                                  'assets/images/Meta.svg',
                                                  height: 45,
                                                  width: 45,
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  _launchInstagram();
                                                },
                                                child: SvgPicture.asset(
                                                  'assets/images/Insta.svg',
                                                  height: 45,
                                                  width: 45,
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  _launchTwitter();
                                                },
                                                child: SvgPicture.asset(
                                                  'assets/images/Twitter.svg',
                                                  height: 45,
                                                  width: 45,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.05),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: screenHeight * 0.2),
                      ],
                    ),
                  ],
                ),
                _buildFooter(screenHeight, screenWidth),
              ],
            ),
          ),
        );
      },
    );
  }

  void _submitSubscriber() async {
    _log('Submit button pressed');

    if (_isSubmitting) {
      _log('Already submitting, ignoring click');
      return;
    }

    setState(() {
      _isSubmitting = true;
    });
    _log('Set isSubmitting to true');

    try {
      _log('Starting form submission');

      await _subscriberService.submitServiceForm(emailId: _subEmail.text);

      _log('Form submitted successfully');

      if (!mounted) {
        _log('Widget not mounted after submission');
        return;
      }

      // Clear the form
      _subEmail.clear();
    } catch (e) {
      _log('Error submitting form: $e');
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to submit form: ${e.toString()}'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
        _log('Set isSubmitting back to false');
      }
    }
  }

  Widget _buildCarouselItem(String text, double screenWidth) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          width: screenWidth * 0.12,
          color: Colors.transparent,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 10),
              ],
            ),
          ),
        ),
        Container(
          height: double.infinity,
          width: screenWidth * 0.025,
          color: Colors.transparent,
          child: SvgPicture.asset(
            'assets/images/flowers.svg',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Widget _buildTestimonial(String image, String testimony, String name) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.3,
      width: screenWidth * 0.82,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.09),
        border: Border.all(
          color: Color.fromARGB(255, 223, 126, 240).withAlpha(100),
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(image),
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                testimony,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: GoogleFonts.spaceGrotesk(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 223, 126, 240).withAlpha(255),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswers(String question, Widget answerwidget) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: screenWidth * 0.80,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255).withAlpha(15),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 223, 126, 240).withAlpha(100),
            width: 2,
          ),
        ),
        child: ExpansionTile(
          collapsedIconColor: Colors.white,
          iconColor: const Color.fromARGB(255, 223, 126, 240),
          title: Text(
            question,
            style: GoogleFonts.spaceMono(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [answerwidget],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Future<void> _showLegalBottomSheet({
    required String title,
    required String assetPath,
  }) async {
    String content = '';
    try {
      content = await rootBundle.loadString(assetPath);
    } catch (e) {
      content = 'Failed to load document. Please try again later.';
    }

    if (!mounted) return;

    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (context) => Container(
            height: MediaQuery.of(context).size.height * 0.85,
            decoration: BoxDecoration(
              color: const Color(0xFF1A1221),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              border: Border.all(
                color: const Color.fromARGB(255, 223, 126, 240).withAlpha(30),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 223, 126, 240).withAlpha(10),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                // Handle bar
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(40),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 20),
                // Title
                Text(
                  title,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 223, 126, 240),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24),
                // Content
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      content,
                      style: const TextStyle(
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
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
                    onPressed: () {},
                    child: Text(
                      "Home",
                      style: GoogleFonts.spaceGrotesk(
                        color: const Color.fromARGB(255, 223, 126, 240),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OurNetwork()),
                      );
                    },
                    child: Text(
                      "Our Network",
                      style: GoogleFonts.spaceGrotesk(
                        color: Colors.white,
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
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '© 2025 Safer | ',
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy | ',
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  _showLegalBottomSheet(
                                    title: 'Privacy Policy',
                                    assetPath:
                                        'assets/legal/privacy_policy.txt',
                                  );
                                },
                        ),
                        TextSpan(
                          text: 'Terms of Service | ',
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  _showLegalBottomSheet(
                                    title: 'Terms & Conditions',
                                    assetPath:
                                        'assets/legal/terms_and_conditions.txt',
                                  );
                                },
                        ),
                        TextSpan(
                          text: 'Refund Policy',
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  _showLegalBottomSheet(
                                    title: 'Refund Policy',
                                    assetPath: 'assets/legal/refund_policy.txt',
                                  );
                                },
                        ),
                      ],
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
                    onTap: () {},
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
