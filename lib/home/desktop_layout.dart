import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:giggles_safer_web/our_network/our_network.dart';

class DesktopLayoutHome extends StatefulWidget {
  const DesktopLayoutHome({super.key});

  @override
  State<DesktopLayoutHome> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayoutHome> {
  Future<void> _precacheImages() async {
    await precacheImage(AssetImage('assets/images/Hero.png'), context);
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

  TextEditingController subEmail = TextEditingController();

  late VideoPlayerController _introController;
  bool _isIntroPlaying = false;

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
    _precacheImages();
  }

  @override
  void dispose() {
    _introController.dispose();
    super.dispose();
  }

  void playpause() {
    setState(() {
      _isIntroPlaying = !_isIntroPlaying;
      if (_isIntroPlaying) {
        _introController.play();
      }
      if (!_isIntroPlaying) {
        _introController.pause();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 0, 0, 0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1311),
                  child: SvgPicture.asset(
                    'assets/images/Network_SVG.svg',
                    width: 600,
                    height: 600,
                  ),
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
                  padding: const EdgeInsets.only(top: 750, right: 1000),
                  child: Image.asset('assets/images/Ellipse 3.png'),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 5,
                      ),
                      child: Container(
                        height: screenHeight * 0.95,
                        width: screenWidth * 0.964,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14.5),
                                bottomRight: Radius.circular(14.5),
                                topRight: Radius.circular(14.5),
                              ),
                              child: Image.asset(
                                height: double.infinity,
                                width: double.infinity,
                                'assets/images/DesktopLayout.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              left: screenWidth * 0.060,
                              top: screenHeight * 0.20,
                              child: Text(
                                "Empowering  Safety,  Anytime,  Anywhere.",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: screenHeight * 0.23,
                                  width: screenWidth * 0.2,
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
                                        SizedBox(height: screenHeight * 0.01),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 10),
                              child: Container(
                                height: screenHeight * 0.15,
                                width: screenWidth * 0.15,
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
                                        top: 40,
                                        left: 400,
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
                                        top: 40,
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    SizedBox(
                      child: Container(
                        width: screenWidth,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: CarouselSlider(
                          items: [
                            _buildCarouselItem(
                              'CONFIDENCE',
                              Colors.white10,
                              screenWidth,
                            ),
                            _buildCarouselItem(
                              '   SAFETY',
                              Colors.white10,
                              screenWidth,
                            ),
                            _buildCarouselItem(
                              '   TRUST',
                              Colors.white10,
                              screenWidth,
                            ),
                            _buildCarouselItem(
                              'INNOVATION',
                              Colors.white10,
                              screenWidth,
                            ),
                            _buildCarouselItem(
                              'SECURITY',
                              Colors.white10,
                              screenWidth,
                            ),
                            _buildCarouselItem(
                              'RELIABILITY',
                              Colors.white10,
                              screenWidth,
                            ),
                            _buildCarouselItem(
                              'ASSISTANCE',
                              Colors.white10,
                              screenWidth,
                            ),
                            _buildCarouselItem(
                              'COMMUNITY',
                              Colors.white10,
                              screenWidth,
                            ),
                          ],
                          options: CarouselOptions(
                            height: 50,
                            viewportFraction: 0.12815,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // height: screenHeight * 0.7,
                          width: screenWidth * 0.4,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 30,
                                  left: 100,
                                ),
                                child: Text(
                                  "WHO WE ARE",
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 100,
                                ),
                                child: Text(
                                  "We're Safer, a technology-driven safety platform\ndedicated to empowering women. Our journey began\nwith the vision to provide real-time assistance\nthrough drones and secure hubs, ensuring no woman\never feels unsafe. We're not just building a product—\nwe're building trust, security, and a community that\nstands together for women's safety.",
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 100,
                                ),
                                child: Text(
                                  "Our mission",
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: const Color.fromARGB(
                                      255,
                                      223,
                                      126,
                                      240,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 100,
                                ),
                                child: Text(
                                  "To make safety accessible, reliable, and innovative for\nevery woman, everywhere.",
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 100,
                                ),
                                child: Text(
                                  "Discover how safer is redefining safety\nwith innovative technology.Watch our story",
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 50,
                            top: 50,
                            bottom: 50,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: screenHeight * 0.7,
                                width: screenWidth * 0.35,
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
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: Container(
                                  height: screenHeight * 0.7,
                                  width: screenWidth * 0.35,
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
                                      height: screenHeight * 0.518,
                                      width: 450,
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
                                right: 0,
                                left: 0,
                                top: 0,
                                bottom: 0,
                                child: IconButton(
                                  onPressed: () {
                                    playpause();
                                  },
                                  icon:
                                      _isIntroPlaying
                                          ? Icon(null)
                                          : Icon(
                                            Icons.play_circle_outline,
                                            color: Colors.white,
                                            size: 50,
                                          ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Container(
                      width: screenWidth,
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 100,
                              width: screenWidth * 0.25,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                              width: screenWidth * 0.25,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                              width: screenWidth * 0.25,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                            Container(
                              height: 100,
                              width: screenWidth * 0.25,
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
                          ],
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 50),
                          child: Stack(
                            children: [
                              Container(
                                height: screenHeight * 0.7,
                                width: screenWidth * 0.35,
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
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: Container(
                                  height: screenHeight * 0.7,
                                  width: screenWidth * 0.35,
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
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                "Our Network",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                "Safer operates through a growing network of\nadvanced drones and strategically placed secure\nhubs, ensuring rapid response and reliable support.\nWith coverage expanding across cities, we are\ndedicated to creating a safety net that empowers\nwomen wherever they are.",
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Colors.white,
                                  ),
                                  padding: WidgetStatePropertyAll(
                                    EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.010,
                                      vertical: screenHeight * 0.020,
                                    ),
                                  ),
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
                                    fontSize: screenWidth * 0.009,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        "Testimonials",
                        style: GoogleFonts.spaceMono(
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Row(
                        children: [
                          _buildTestimonial(
                            'assets/images/Test1.jpg',
                            '"Knowing there’s a secure hub\nnearby makes me feel safer when\nI’m out alone."',
                            '-shreya Sharma',
                          ),
                          SizedBox(width: 50),
                          _buildTestimonial(
                            'assets/images/Test2.jpg',
                            '"Safer gave me peace of mind\nduring a late-night commute. The\nquick response was incredible!"',
                            '-Neha Sharma',
                          ),
                          SizedBox(width: 50),
                          _buildTestimonial(
                            'assets/images/Test3.jpg',
                            '"The drone assistance feature is\na game-changer for women’s\nsafety. Thank you, Safer!"',
                            '-Arpita Singh',
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 50),
                          child: Stack(
                            children: [
                              Container(
                                height: screenHeight * 0.7,
                                width: screenWidth * 0.35,
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
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: Container(
                                  height: screenHeight * 0.7,
                                  width: screenWidth * 0.35,
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
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                "Get the App",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                "Your safety is just a tap away! Download the Safer\napp now on the Play Store and App Store to\naccess real-time assistance, secure hubs, and\nmore—anytime, anywhere.",
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
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
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 10),
                      child: Text(
                        "Common Questions",
                        style: GoogleFonts.spaceMono(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
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
                        "A secure hub is Safer’s on-ground interconnected support team, ready to assist users during emergencies or unsafe situations. To find one near you, simply press the SOS button in the Safer App, and help will be dispatched to your location.",
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
                        " Yes, Safer’s drones are equipped with cameras and tracking devices. Once the drone identifies you, it will follow you to ensure continuous monitoring, capturing footage for legal evidence, and helping responders locate you quickly and accurately.",
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Yes, Safer offers 24/7 customer support to ensure user safety and assist with any concerns at any time. You can reach us anytime at",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: launchEmail,
                            child: Text(
                              'admin@gigglessafer.com',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromARGB(255, 223, 126, 240),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
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
                    SizedBox(height: screenHeight * 0.05),
                    Container(
                      height: screenHeight * 0.7,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: double.infinity,
                            width: screenWidth * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border(
                                top: BorderSide(
                                  color: const Color.fromARGB(
                                    255,
                                    223,
                                    126,
                                    240,
                                  ),
                                ),
                                bottom: BorderSide(
                                  color: const Color.fromARGB(
                                    255,
                                    223,
                                    126,
                                    240,
                                  ),
                                ),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/Stay-in-touch.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            width: screenWidth * 0.5,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ).withAlpha(15),
                              border: Border(
                                top: BorderSide(
                                  color: const Color.fromARGB(
                                    255,
                                    219,
                                    90,
                                    210,
                                  ),
                                ),
                                bottom: BorderSide(
                                  color: const Color.fromARGB(
                                    255,
                                    219,
                                    90,
                                    210,
                                  ),
                                ),
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: AutoSizeText(
                                        "Stay in Touch",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.spaceMono(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      bottom: 20,
                                      right: 20,
                                    ),
                                    child: Text(
                                      "Subscribe to Safer for updates, safety tips, and the latest features.\nJoin our mission to create a safer world—one step at a time!",
                                      style: GoogleFonts.spaceGrotesk(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: SizedBox(
                                      width: screenWidth * 0.52,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 220),
                                        child: TextField(
                                          controller: subEmail,
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
                                              fontSize: screenWidth * 0.012,
                                            ),
                                            filled: true,
                                            fillColor: Colors.black.withAlpha(
                                              120,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
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
                                            vertical: screenHeight * 0.025,
                                          ),
                                        ),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        subEmail.clear();
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
                                  ),
                                  SizedBox(height: screenHeight * 0.02),
                                  SizedBox(width: screenWidth * 0.02),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Your information will remain 100% secure and confidential,\nprotected with the highest standards of privacy and security.",
                                      style: GoogleFonts.spaceGrotesk(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: double.infinity,
                                    height: screenHeight * 0.22,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: screenHeight * 0.04),
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.5),
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
          ],
        ),
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

  Widget _buildTestimonial(String image, String testimony, String name) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.5,
      width: screenWidth * 0.25,
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
}

Widget _buildCarouselItem(String text, Color color, double screenWidth) {
  return Row(
    children: [
      Container(
        height: double.infinity,
        width: screenWidth * 0.10312,
        color: color,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 25),
              Text(
                text,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 20,
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
        color: Colors.white10,
        child: SvgPicture.asset(
          'assets/images/flowers.svg',
          fit: BoxFit.contain,
        ),
      ),
    ],
  );
}

Widget _buildAnswers(String question, Widget answerwidget) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
    child: Container(
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
