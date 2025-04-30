import 'dart:html' as html;

import 'package:auto_size_text/auto_size_text.dart';
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

class MobileLayoutHome extends StatefulWidget {
  const MobileLayoutHome({super.key});

  @override
  State<MobileLayoutHome> createState() => _MobileLayoutHomeState();
}

class _MobileLayoutHomeState extends State<MobileLayoutHome> {
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

  TextEditingController _subEmail = TextEditingController();

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

                      // Row(
                      //   children: [
                      //     Spacer(),
                      //     Padding(
                      //       padding: const EdgeInsets.only(top: 1890),
                      //       child: SvgPicture.asset(
                      //         'assets/images/network_2.svg',
                      //         width: 600,
                      //         height: 600,
                      //       ),
                      //     ),
                      //   ],
                      // ),
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
                          Center(
                            child: Container(
                              height: screenHeight * 0.5,
                              width: screenWidth * 0.95,
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
                                      'assets/images/TabletLayout.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Container(
                                      height: screenHeight * 0.1,
                                      width: screenWidth * 0.15,
                                      color: Colors.transparent,
                                      child: SvgPicture.asset(
                                        'assets/images/Safer_logo.svg',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: screenWidth * 0.75,
                                      color: Colors.transparent,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                // left: 20,
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Home",
                                                  style:
                                                      GoogleFonts.spaceGrotesk(
                                                        color:
                                                            const Color.fromARGB(
                                                              255,
                                                              223,
                                                              126,
                                                              240,
                                                            ),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 5,
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                              OurNetwork(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  "Our Network",
                                                  style:
                                                      GoogleFonts.spaceGrotesk(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 100),
                                      child: Transform.scale(
                                        scaleX: 1.1,
                                        child: Text(
                                          "Empowering Safety,\nAnytime,Anywhere.",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.spaceMono(
                                            letterSpacing: 3.0,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      child: Container(
                                        // height: screenHeight * 0.18,
                                        width: screenWidth * 0.75,
                                        color: Colors.transparent,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              "Introducing Safer",
                                              style: GoogleFonts.spaceMono(
                                                fontSize: screenWidth * 0.05,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                  255,
                                                  211,
                                                  84,
                                                  173,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.01,
                                            ),
                                            AutoSizeText(
                                              "Empowering women with real-time safety through drones and secure hubs.Help is always just a click away.",
                                              style: GoogleFonts.spaceMono(
                                                fontSize: screenWidth * 0.03,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.01,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                                  _buildCarouselItem(
                                    ' CONFIDENCE',
                                    screenWidth,
                                  ),
                                  _buildCarouselItem(
                                    '     SAFETY',
                                    screenWidth,
                                  ),
                                  _buildCarouselItem(
                                    '      TRUST',
                                    screenWidth,
                                  ),
                                  _buildCarouselItem(
                                    ' INNOVATION',
                                    screenWidth,
                                  ),
                                  _buildCarouselItem(
                                    '   SECURITY',
                                    screenWidth,
                                  ),
                                  _buildCarouselItem(
                                    ' RELIABILITY',
                                    screenWidth,
                                  ),
                                  _buildCarouselItem(
                                    ' ASSISTANCE',
                                    screenWidth,
                                  ),
                                  _buildCarouselItem(' COMMUNITY', screenWidth),
                                ],
                                options: CarouselOptions(
                                  height: 60,
                                  viewportFraction: 0.225,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(
                                    milliseconds: 1000,
                                  ),
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
                                height: screenHeight * 0.4,
                                width: screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    223,
                                    126,
                                    240,
                                  ).withAlpha(70),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(110),
                                    bottomRight: Radius.circular(110),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: Container(
                                  height: screenHeight * 0.4,
                                  width: screenWidth * 0.8,
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
                                      topLeft: Radius.circular(110),
                                      bottomRight: Radius.circular(110),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(110),
                                      bottomRight: Radius.circular(110),
                                    ),
                                    child: SizedBox(
                                      height: screenHeight * 0.4,
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
                                      fontSize: 40,
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
                                  SizedBox(
                                    width: screenWidth * 0.9,
                                    child: Text(
                                      "We're Safer, a technology-driven safety platform dedicated to empowering women. Our journey began with the vision to provide real-time assistance through drones and secure hubs,ensuring no woman ever feels unsafe. We're not just building a product— we're building trust,security, and a community that stands together for women's safety.",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.spaceGrotesk(
                                        fontSize: 14,
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
                                      fontSize: 18,
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
                                  Text(
                                    "To make safety accessible, reliable, and\ninnovative for every woman,everywhere.",
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 35,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: screenHeight * 0.12,
                                          width: screenWidth * 0.41,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '10k+',
                                                  style: GoogleFonts.spaceMono(
                                                    fontSize: 45,
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
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      GoogleFonts.spaceGrotesk(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          width: screenWidth * 0.41,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '120+',
                                                  style: GoogleFonts.spaceMono(
                                                    fontSize: 45,
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
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      GoogleFonts.spaceGrotesk(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 35,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: screenHeight * 0.12,
                                          width: screenWidth * 0.41,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '15+',
                                                  style: GoogleFonts.spaceMono(
                                                    fontSize: 45,
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
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      GoogleFonts.spaceGrotesk(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          width: screenWidth * 0.41,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '300+',
                                                  style: GoogleFonts.spaceMono(
                                                    fontSize: 45,
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
                                                  'Secure Hubs',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      GoogleFonts.spaceGrotesk(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.05),
                          Stack(
                            children: [
                              Container(
                                height: screenHeight * 0.4,
                                width: screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    223,
                                    126,
                                    240,
                                  ).withAlpha(70),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(110),
                                    bottomRight: Radius.circular(110),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: Container(
                                  height: screenHeight * 0.4,
                                  width: screenWidth * 0.8,
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
                                      topLeft: Radius.circular(110),
                                      bottomRight: Radius.circular(110),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(110),
                                      bottomRight: Radius.circular(110),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: screenWidth * 0.088),
                                    Text(
                                      "Our Network",
                                      style: GoogleFonts.spaceMono(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: screenWidth * 0.088),
                                  SizedBox(
                                    width: screenWidth * 0.9,
                                    child: Text(
                                      "Safer operates through a growing network of advanced drones and strategically placed secure hubs, ensuring rapid response and reliable support. With coverage expanding across cities, we are dedicated to creating a safety net that empowers women wherever they are.",
                                      style: GoogleFonts.spaceGrotesk(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                children: [
                                  SizedBox(width: screenWidth * 0.088),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                        Colors.white,
                                      ),
                                      padding: WidgetStatePropertyAll(
                                        EdgeInsets.symmetric(
                                          horizontal: screenWidth * 0.045,
                                          vertical: screenHeight * 0.005,
                                        ),
                                      ),
                                      shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
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
                                        fontSize: screenWidth * 0.03,
                                        fontWeight: FontWeight.w600,
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
                                "Testimonials",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              _buildTestimonial(
                                'assets/images/Test1.jpg',
                                "Knowing there's a secure hub\nnearby makes me feel safer when\nI'm out alone.",
                                '-shreya Sharma',
                              ),
                              SizedBox(height: screenHeight * 0.05),
                              _buildTestimonial(
                                'assets/images/Test2.jpg',
                                '"Safer gave me peace of mind\nduring a late-night commute. The\nquick response was incredible!"',
                                '-Neha Sharma',
                              ),
                              SizedBox(height: screenHeight * 0.05),
                              _buildTestimonial(
                                'assets/images/Test3.jpg',
                                "The drone assistance feature is\na game-changer for women's\nsafety. Thank you, Safer!",
                                '-Arpita Singh',
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.05),
                          Stack(
                            children: [
                              Container(
                                height: screenHeight * 0.4,
                                width: screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    223,
                                    126,
                                    240,
                                  ).withAlpha(70),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(110),
                                    bottomRight: Radius.circular(110),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: Container(
                                  height: screenHeight * 0.4,
                                  width: screenWidth * 0.8,
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
                                      topLeft: Radius.circular(110),
                                      bottomRight: Radius.circular(110),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(110),
                                      bottomRight: Radius.circular(110),
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
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Your safety is just a tap away! Download the\nSafer app now on the Play Store and App Store\nto access real-time assistance, secure hubs,and\nmore—anytime, anywhere.",
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.05),
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: SizedBox(
                                  height: 40,
                                  // width: 250,
                                  child: Image.asset(
                                    'assets/images/playstore.png',
                                  ),
                                ),
                              ),
                              // SizedBox(width: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 150),
                                child: InkWell(
                                  onTap: () {},
                                  child: SizedBox(
                                    height: 40,
                                    // width: 250,
                                    child: Image.asset(
                                      'assets/images/appstore.png',
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
                                "Common Questions",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
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
                                    fontWeight: FontWeight.w600,
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
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              _buildAnswers(
                                'Are the drones equipped with cameras or tracking devices?',
                                Text(
                                  "Yes, Safer's drones are equipped with cameras and tracking devices. Once the drone identifies you, it will follow you to ensure continuous monitoring, capturing footage for legal evidence, and helping responders locate you quickly and accurately.",
                                  style: GoogleFonts.spaceGrotesk(
                                    color: Colors.white70,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
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
                                    fontWeight: FontWeight.w600,
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
                                        fontWeight: FontWeight.w600,
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
                                          fontWeight: FontWeight.w600,
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
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: screenHeight * 0.4,
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: Colors.transparent,
                                          child: Text(
                                            "Stay in Touch",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.spaceMono(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          child: Text(
                                            "Subscribe to Safer for updates,safety tips, and the latest features.Join our mission to create a safer world—one step at a time!",
                                            style: GoogleFonts.spaceGrotesk(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
                                        SizedBox(
                                          width: screenWidth * 0.8,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 10),
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
                                                          screenHeight * 0.015,
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
                                                horizontal: screenWidth * 0.05,
                                                vertical: screenHeight * 0.002,
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
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
                                        Text(
                                          "Your information will remain 100%\nsecure and confidential,protected\nwith the highest standards of\nprivacy and security.",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white60,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      height: screenHeight * 0.065,
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
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
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
                                                    style:
                                                        GoogleFonts.spaceGrotesk(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w800,
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
                                                      height: 35,
                                                      width: 35,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: screenWidth * 0.05,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      _launchInstagram();
                                                    },
                                                    child: SvgPicture.asset(
                                                      'assets/images/Insta.svg',
                                                      height: 35,
                                                      width: 35,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: screenWidth * 0.05,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      _launchTwitter();
                                                    },
                                                    child: SvgPicture.asset(
                                                      'assets/images/Twitter.svg',
                                                      height: 35,
                                                      width: 35,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.05),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  _buildFooter(screenHeight, screenWidth),
                ],
              ),
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

  Widget _buildAnswers(String question, Widget answerwidget) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: screenWidth * 0.9,
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
              fontSize: 10,
              fontWeight: FontWeight.w800,
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
                radius: 50,
                backgroundImage: AssetImage(image),
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                testimony,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: GoogleFonts.spaceGrotesk(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 223, 126, 240).withAlpha(255),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String text, double screenWidth) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          width: screenWidth * 0.2,
          color: Colors.transparent,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  text,
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.transparent,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: AutoSizeText(
                              "Home",
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromARGB(255, 223, 126, 240),
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OurNetwork(),
                                ),
                              );
                            },
                            child: AutoSizeText(
                              "Our Network",
                              style: GoogleFonts.spaceGrotesk(
                                color: Colors.white,
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    // child: Text(
                    //   "© 2025 Safer | Privacy Policy | Terms of Service",
                    //   style: GoogleFonts.spaceGrotesk(
                    //     fontSize: screenWidth * 0.04,
                    //     fontWeight: FontWeight.w400,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '© 2025 Safer | ',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy | ',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: screenWidth * 0.04,
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
                            text: 'Terms of Service',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: screenWidth * 0.04,
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _launchInstagram();
                        },
                        child: SvgPicture.asset(
                          'assets/images/InstagramLogo.svg',
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/images/TwitterLogo.svg',
                        ),
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
          ),
        ],
      ),
    );
  }
}
