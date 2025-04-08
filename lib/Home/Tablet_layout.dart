import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/About_us/About_us.dart';
import 'package:giggles_safer_web/Our_network/Our_network.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletLayoutHome extends StatefulWidget {
  @override
  State<TabletLayoutHome> createState() => _TabletLayoutHomeState();
}

class _TabletLayoutHomeState extends State<TabletLayoutHome> {
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
                  height: screenHeight * 9.5,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(244, 0, 0, 0),
                  ),
                ),
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

                Positioned(
                  top: screenHeight * 0.129,
                  left: screenWidth * 0.018,
                  child: Container(
                    height: screenHeight * 0.850,
                    width: screenWidth * 0.964,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey),
                        left: BorderSide(width: 1, color: Colors.grey),
                        right: BorderSide(width: 1, color: Colors.grey),
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
                            'assets/images/Hero.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withAlpha(190),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(14.5),
                              bottomRight: Radius.circular(14.5),
                              topRight: Radius.circular(14.5),
                            ),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 229, 99, 190).withAlpha(80),
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.0, 1],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(14.5),
                              bottomRight: Radius.circular(14.5),
                              topRight: Radius.circular(14.5),
                            ),
                          ),
                        ),
                        Positioned(
                          left: screenWidth * 0.080,
                          top: screenHeight * 0.065,
                          child: Text(
                            "Empowering Safety, Anytime,\n         Anywhere.",
                            style: GoogleFonts.spaceMono(
                              fontSize: 37,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: screenHeight * 0.275,
                          right: screenWidth * 0.228,
                          child: Text(
                            "Introducing Safer",
                            style: GoogleFonts.spaceMono(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 211, 84, 173),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: screenHeight * 0.15,
                          right: screenWidth * 0.055,
                          child: Text(
                            "Empowering women with real-time \nsafety through drones and secure \nhubs.Help is always just a click\naway.",
                            style: GoogleFonts.spaceMono(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: screenHeight * 0.075,
                          right: screenWidth * 0.297,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 219, 90, 210),
                              ),
                              padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.021,
                                  vertical: screenHeight * 0.025,
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
                              "Explore more",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: screenWidth * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.017,
                  left: screenWidth * 0.018,
                  child: Container(
                    height: screenHeight * 0.113,
                    width: screenWidth * 0.14,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        left: BorderSide(width: 1, color: Colors.grey),
                        right: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/images/Hero1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            color: Colors.black.withAlpha(190),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: SvgPicture.asset(
                              'assets/images/Safer_logo.svg',
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 200),
                      child: TextButton(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 15),
                      child: TextButton(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 15),
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
                      padding: const EdgeInsets.only(top: 30, left: 100),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 219, 90, 210),
                        radius: 17,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 780),
                  child: SizedBox(
                    child: Container(
                      width: screenWidth,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: CarouselSlider(
                        items: [
                          _buildCarouselItem(
                            ' CONFIDENCE',
                            Colors.white10,
                            screenWidth,
                          ),
                          _buildCarouselItem(
                            '     SAFETY',
                            Colors.white10,
                            screenWidth,
                          ),
                          _buildCarouselItem(
                            '      TRUST',
                            Colors.white10,
                            screenWidth,
                          ),
                          _buildCarouselItem(
                            ' INNOVATION',
                            Colors.white10,
                            screenWidth,
                          ),
                          _buildCarouselItem(
                            '   SECURITY',
                            Colors.white10,
                            screenWidth,
                          ),
                          _buildCarouselItem(
                            ' RELIABILITY',
                            Colors.white10,
                            screenWidth,
                          ),
                          _buildCarouselItem(
                            ' ASSISTANCE',
                            Colors.white10,
                            screenWidth,
                          ),
                          _buildCarouselItem(
                            ' COMMUNITY',
                            Colors.white10,
                            screenWidth,
                          ),
                        ],
                        options: CarouselOptions(
                          height: 60,
                          // viewportFraction: 0.12815,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 880, left: 80),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 900, left: 110),
                  child: Container(
                    height: screenHeight * 0.80,
                    width: screenWidth * 0.80,
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
                  top: screenHeight * 2.1,
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
                  top: screenHeight * 2.2,
                  left: screenWidth * 0.099,
                  child: Text(
                    "Founded with a vision to make safety accessible to every women,\nSafer began as a response to the growing need for innovative\nsafety solutions. What started as a small initiative to leverage\ntechnology for women's security has evolved into a comprehensive\nplatform combining drones and secure hubs. Over the years, our\ncommitment to empowering women has driven us to create cutting-\nedge solutions that ensure help is always within reach. Safer's\njourney is fueled by the belief that every women deserves to feel\nconfident and protected,no matter where life takes her.",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 2.55,
                  left: screenWidth * 0.099,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.020,
                          vertical: screenHeight * 0.025,
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
                        MaterialPageRoute(builder: (context) => AboutUs()),
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
                ),
                Positioned(
                  top: screenHeight * 2.75,
                  left: screenWidth * 0.12,
                  child: Container(
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
                ),
                Positioned(
                  top: screenHeight * 2.7,
                  left: screenWidth * 0.1,
                  child: Container(
                    height: screenHeight * 0.80,
                    width: screenWidth * 0.80,
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
                  top: screenHeight * 3.65,
                  left: screenWidth * 0.099,
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
                  top: screenHeight * 3.75,
                  left: screenWidth * 0.099,
                  child: Text(
                    "Safer operates through a growing network of advanced drones and\nstrategically placed secure hubs, ensuring rapid response and\nreliable support. With coverage expanding across cities, we are\ndedicated to creating a safety net that empowers women wherever\nthey are.",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 3.95,
                  left: screenWidth * 0.099,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.020,
                          vertical: screenHeight * 0.025,
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
                        fontSize: screenWidth * 0.02,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 4.09,
                  left: screenWidth * 0.099,
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
                  top: screenHeight * 4.25,
                  left: screenWidth * 0.099,
                  child: Column(
                    children: [
                      _buildTestimonial(
                        'assets/images/Test1.jpg',
                        '"Knowing there’s a secure hub nearby makes me feel\n                      safer when I’m out alone."',
                        '-shreya Sharma',
                      ),
                      SizedBox(height: 50),
                      _buildTestimonial(
                        'assets/images/Test2.jpg',
                        '"Safer gave me peace of mind during a late-night\n    commute. The quick response was incredible!"',
                        '-Neha Sharma',
                      ),
                      SizedBox(height: 50),
                      _buildTestimonial(
                        'assets/images/Test3.jpg',
                        '"The drone assistance feature is a game-changer for\n            women’s safety. Thank you, Safer!"',
                        '-Arpita Singh',
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight * 5.8,
                  left: screenWidth * 0.099,
                  child: Container(
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
                ),
                Positioned(
                  top: screenHeight * 5.84,
                  left: screenWidth * 0.12,
                  child: Container(
                    height: screenHeight * 0.80,
                    width: screenWidth * 0.80,
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
                  top: screenHeight * 6.7,
                  left: screenWidth * 0.099,
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
                  top: screenHeight * 6.8,
                  left: screenWidth * 0.099,
                  child: Text(
                    "Your safety is just a tap away! Download the Safer app now on the\nPlay Store and App Store to access real-time assistance, secure hubs,\nand more—anytime, anywhere.",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 6.95,
                  left: screenWidth * 0.099,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: 55,
                          // width: 250,
                          child: Image.asset('assets/images/playstore.png'),
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: 55,
                          // width: 250,
                          child: Image.asset('assets/images/appstore.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight * 7.1,
                  left: screenWidth * 0.099,
                  child: Text(
                    "Common Questions",
                    style: GoogleFonts.spaceMono(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: screenHeight * 7.2),
                    _buildAnswers(
                      'How quickly can a drone or secure hub respond in an emergency?',
                      ' Answer',
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
                              color: const Color.fromARGB(255, 223, 126, 240),
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
                    // SizedBox(height: screenHeight * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Container(
                        height: screenHeight * 0.62,
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 270,
                                // left: 10,
                              ),
                              child: Text(
                                "Stay in Touch",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 45,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 25,
                                top: 10,
                                // bottom: 20,
                              ),
                              child: Text(
                                "Subscribe to Safer for updates, safety tips, and the latest features. Join our mission to create a safer world—one step\nat a time!",
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 10),
                              child: SizedBox(
                                width: screenWidth * 0.80,
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
                                        fontSize: 18,
                                      ),
                                      filled: true,
                                      fillColor: Colors.black.withAlpha(120),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(right: 480),
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
                                      borderRadius: BorderRadius.circular(40),
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
                              height: screenHeight * 0.12,
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
                    ),
                  ],
                ),
                // SizedBox(height: screenHeight * 0.08),
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

  Widget _buildTestimonial(String image, String testimony, String name) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.43,
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

  Widget _buildFooter(double screenHeight, double screenWidth) {
    return Container(
      height: screenHeight * 0.28,
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
                SvgPicture.asset('assets/images/InstagramLogo.svg'),
                SizedBox(width: screenWidth * 0.01),
                SvgPicture.asset('assets/images/TwitterLogo.svg'),
                SizedBox(width: screenWidth * 0.01),
                SvgPicture.asset('assets/images/MetaLogo.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildCarouselItem(String text, Color color, double screenWidth) {
  return Row(
    children: [
      Container(
        height: double.infinity,
        // width: screenWidth * 0.10312,
        width: screenWidth * 0.12,
        color: color,
        child: Row(
          children: [
            // SizedBox(width: 7),
            Text(
              text,
              style: GoogleFonts.spaceGrotesk(
                fontSize: 15,
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
    padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
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
