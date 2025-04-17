import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/Home/Home.dart';
import 'package:giggles_safer_web/Our_network/Our_network.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class TabletLayoutAbout extends StatefulWidget {
  const TabletLayoutAbout({super.key});

  @override
  State<TabletLayoutAbout> createState() => _TabletLayoutAboutState();
}

class _TabletLayoutAboutState extends State<TabletLayoutAbout> {
  late VideoPlayerController _introController;
  bool _isIntroPlaying = false;

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
  }

  @override
  void dispose() {
    _introController.dispose();
    super.dispose();
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
    'https://www.instagram.com/_so_called_abhi_shek/',
  );

  Future<void> _launchInstagram() async {
    if (!await launchUrl(_instagramUrl, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_instagramUrl';
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
                _buildHeader(screenHeight, screenWidth),
                Stack(
                  children: [
                    Image.asset('assets/images/Ellipse 2.png'),
                    Row(
                      children: [
                        Spacer(),
                        Image.asset('assets/images/Ellipse 4.png'),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: screenHeight * 0.05),
                        Center(
                          child: Container(
                            height: screenHeight * 0.73,
                            width: screenWidth * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.5),
                                        child: SizedBox(
                                          height: screenHeight * 0.73,
                                          width: screenWidth * 0.8,
                                          child:
                                              _introController
                                                      .value
                                                      .isInitialized
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
                                  ],
                                ),
                                _isIntroPlaying
                                    ? SizedBox()
                                    : SizedBox(
                                      height: screenHeight * 0.74,
                                      width: screenWidth * 0.8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        child: Image.asset(
                                          'assets/images/CoverBg.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                _isIntroPlaying
                                    ? SizedBox()
                                    : SizedBox(
                                      height: screenHeight * 0.74,
                                      width: screenWidth * 0.8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        child: Image.asset(
                                          'assets/images/Group 327.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                _isIntroPlaying
                                    ? SizedBox()
                                    : Align(
                                      alignment: Alignment.bottomLeft,
                                      child: SvgPicture.asset(
                                        'assets/images/Big Arrow.svg',
                                        fit: BoxFit.fill,
                                        height: screenHeight * 0.13,
                                      ),
                                    ),
                                Center(
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
                                GestureDetector(
                                  onTap: playpause,
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    color: Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.088),
                            Text(
                              "WHO WE ARE",
                              style: GoogleFonts.spaceMono(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 223, 126, 240),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.088),
                            Text(
                              "We're Safer, a technology-driven safety platform dedicated to\nempowering women. Our journey began with the vision to provide\nreal-time assistance through drones and secure hubs, ensuring no\nwoman ever feels unsafe. We're not just building a product— we're\nbuilding trust, security, and a community that stands together for\nwomen's safety.",
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
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
                                color: const Color.fromARGB(255, 223, 126, 240),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.088),
                            Text(
                              "To make safety accessible, reliable, and innovative for every woman,\neverywhere.",
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.088),
                            Text(
                              "Discover how safer is redefining safety with innovative\ntechnology.Watch our story!",
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Container(
                          width: double.infinity,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                width: screenWidth * 0.333,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
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
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Container(
                          height: 100,
                          width: screenWidth * 0.333,
                          decoration: BoxDecoration(color: Colors.transparent),
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
                        SizedBox(height: screenHeight * 0.05),
                        _buildCard(
                          screenHeight,
                          screenWidth,
                          'assets/images/Events-1.jpg',
                          'Events',
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        _buildCard(
                          screenHeight,
                          screenWidth,
                          'assets/images/News.jpg',
                          'News',
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        _buildCard(
                          screenHeight,
                          screenWidth,
                          'assets/images/Stories.jpg',
                          'Stories',
                        ),
                        SizedBox(height: screenHeight * 0.08),
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
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCard(
    double screenHeight,
    double screenWidth,
    String imagePath,
    String text,
  ) {
    return Container(
      height: screenHeight * 0.44,
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: const Color.fromARGB(255, 223, 126, 240)),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: screenHeight * 0.44,
              width: screenWidth * 0.8,
            ),
          ),
          Center(
            child: Text(
              text,
              style: GoogleFonts.spaceMono(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 223, 126, 240),
              ),
            ),
          ),
        ],
      ),
    );
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
              "About us",
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
                      "About us",
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
}
