import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/About_us/About_us.dart';
import 'package:giggles_safer_web/Our_network/our_network.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopLayoutHome extends StatefulWidget {
  const DesktopLayoutHome({super.key});

  @override
  State<DesktopLayoutHome> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayoutHome> {
  @override
  void initState() {
    super.initState();
    _precacheImages();
  }

  Future<void> _precacheImages() async {
    await precacheImage(AssetImage('assets/images/Hero.png'), context);
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

                Positioned(
                  top: screenHeight * 0.017,
                  left: screenWidth * 0.018,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 1000, top: 500),
                          child: Container(
                            height: screenHeight * 0.23,
                            width: screenWidth * 0.4,
                            color: Colors.transparent,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Introducing Safer",
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 211, 84, 173),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Text(
                                    "Empowering women with real-time \nsafety through drones and secure \nhubs.Help is always just a click\naway.",
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.01),

                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                        const Color.fromARGB(255, 219, 90, 210),
                                      ),
                                      padding: WidgetStatePropertyAll(
                                        EdgeInsets.symmetric(
                                          horizontal: screenWidth * 0.011,
                                          vertical: screenHeight * 0.025,
                                        ),
                                      ),
                                      shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Explore more",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenWidth * 0.009,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
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
                                    left: 630,
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
                                          builder: (context) => AboutUs(),
                                        ),
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
                                          builder: (context) => OurNetwork(),
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
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 13,
                                    left: 250,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      219,
                                      90,
                                      210,
                                    ),
                                    radius: 17,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.phone, size: 20),
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
                Padding(
                  padding: const EdgeInsets.only(top: 800),
                  child: SizedBox(
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
                ),

                Positioned(
                  top: screenHeight * 1.26,
                  left: screenWidth * 0.099,
                  child: Text(
                    "About Us",
                    style: GoogleFonts.spaceMono(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 1.35,
                  left: screenWidth * 0.099,
                  child: Text(
                    "Founded with a vision to make safety accessible to\nevery women,Safer began as a response to the growing\nneed for innovative safety solutions. What started as a\nsmall initiative to leverage technology for women's\nsecurity has evolved into a comprehensive platform\ncombining drones and secure hubs. Over the years, our\ncommitment to empowering women has driven us to\ncreate cutting-edge solutions that ensure help is\nalways within reach. Safer's journey is fueled by the\nbelief that every women deserves to feel confident and\nprotected,no matter where life takes her.",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 1.78,
                  left: screenWidth * 0.099,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
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
                        MaterialPageRoute(builder: (context) => AboutUs()),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 910, left: 850),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 940, left: 880),
                  child: Container(
                    height: screenHeight * 0.7,
                    width: screenWidth * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color.fromARGB(255, 223, 126, 240),
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
                        'assets/images/About_Us.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 2.05,
                  left: screenWidth * 0.12,
                  child: Container(
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
                ),
                Positioned(
                  top: screenHeight * 2,
                  left: screenWidth * 0.1,
                  child: Container(
                    height: screenHeight * 0.7,
                    width: screenWidth * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color.fromARGB(255, 223, 126, 240),
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
                Positioned(
                  top: screenHeight * 2.1,
                  right: screenWidth * 0.21,
                  child: Text(
                    "Our Network",
                    style: GoogleFonts.spaceMono(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 2.2,
                  right: screenWidth * 0.1,
                  child: Text(
                    "Safer operates through a growing network of\nadvanced drones and strategically placed secure\nhubs, ensuring rapid response and reliable support.\nWith coverage expanding across cities, we are\ndedicated to creating a safety net that empowers\nwomen wherever they are.",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 2.45,
                  right: screenWidth * 0.365,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
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
                        MaterialPageRoute(builder: (context) => OurNetwork()),
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
                ),
                Positioned(
                  top: screenHeight * 2.9,
                  left: screenWidth * 0.11,
                  child: Text(
                    "Testimonials",
                    style: GoogleFonts.spaceMono(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 3.05,
                  left: screenWidth * 0.12,
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
                Positioned(
                  top: screenHeight * 3.6,
                  left: screenWidth * 0.12,
                  child: Container(
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
                ),
                Positioned(
                  top: screenHeight * 3.64,
                  left: screenWidth * 0.138,
                  child: Container(
                    height: screenHeight * 0.7,
                    width: screenWidth * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color.fromARGB(255, 223, 126, 240),
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
                Positioned(
                  top: screenHeight * 3.8,
                  left: screenWidth * 0.55,
                  child: Text(
                    "Get the App",
                    style: GoogleFonts.spaceMono(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 3.9,
                  left: screenWidth * 0.55,
                  child: Text(
                    "Your safety is just a tap away! Download the Safer\napp now on the Play Store and App Store to\naccess real-time assistance, secure hubs, and\nmore—anytime, anywhere.",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 4.07,
                  left: screenWidth * 0.535,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 250,
                      child: Image.asset('assets/images/playstore.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 4.07,
                  left: screenWidth * 0.665,
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 55,
                      width: 250,
                      child: Image.asset('assets/images/appstore.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 4.47,
                  left: screenWidth * 0.13,
                  child: Text(
                    "Common Questions",
                    style: GoogleFonts.spaceMono(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: screenHeight * 4.55),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: _buildAnswers(
                        'How quickly can a drone or secure hub respond in an emergency?',
                        ' Answer',
                      ),
                    ),
                    _buildAnswers(
                      'What is a secure hub, and how do i locate one near me?',
                      ' Answer',
                    ),
                    _buildAnswers(
                      'Are the drones equipped with cameras or tracking devices?',
                      ' Answer',
                    ),
                    _buildAnswers(
                      'What measures are in place to guarantee privacy during emergencies?',
                      ' Answer',
                    ),
                    _buildAnswers(
                      'Is there a customer support helpline available?',
                      ' Answer',
                    ),
                    _buildAnswers(
                      'Does the app work without an internet connection?',
                      ' Answer',
                    ),
                    SizedBox(height: 200),
                    Container(
                      height: screenHeight * 0.85,
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
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 80,
                                    right: 160,
                                  ),
                                  child: Text(
                                    "Stay in Touch",
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 160,
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    "Subscribe to Safer for updates, safety tips, and\nthe latest features. Join our mission to create a\nsafer world—one step at a time!",
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: SizedBox(
                                    width: screenWidth * 0.52,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 220),
                                      child: TextField(
                                        style: TextStyle(color: Colors.white70),
                                        decoration: InputDecoration(
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: screenWidth * 0.015,
                                            vertical: screenHeight * 0.025,
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
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.only(right: 450),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                        const Color.fromARGB(255, 219, 90, 210),
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
                                    onPressed: () {},
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
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 100,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Your information will remain 100% secure and confidential,\nprotectedwith the highest standards of privacy and security.",
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
                                  child: Column(
                                    children: [
                                      SizedBox(height: screenHeight * 0.04),
                                      Row(
                                        children: [
                                          SizedBox(width: screenWidth * 0.05),
                                          Text(
                                            "Follow us on",
                                            style: GoogleFonts.spaceGrotesk(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: screenWidth * 0.1),
                                          InkWell(
                                            onTap: () {},
                                            child: SvgPicture.asset(
                                              'assets/images/Meta.svg',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                          SizedBox(width: screenWidth * 0.01),
                                          InkWell(
                                            onTap: () {},
                                            child: SvgPicture.asset(
                                              'assets/images/Insta.svg',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                          SizedBox(width: screenWidth * 0.01),
                                          InkWell(
                                            onTap: () {},
                                            child: SvgPicture.asset(
                                              'assets/images/Pinterest.svg',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                          SizedBox(width: screenWidth * 0.01),
                                          InkWell(
                                            onTap: () {},
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
                              ],
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
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    );
                  },
                  child: Text(
                    "About us",
                    style: GoogleFonts.spaceGrotesk(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
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
                top: BorderSide(color: const Color.fromARGB(255, 219, 90, 210)),
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
                  onTap: () {},
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
    );
  }

  Widget _buildTestimonial(String image, String testimony, String name) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.43,
      width: screenWidth * 0.22,
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

Widget _buildAnswers(String question, String answer) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 200, right: 200),
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
              children: [
                Text(
                  answer,
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    ),
  );
}
