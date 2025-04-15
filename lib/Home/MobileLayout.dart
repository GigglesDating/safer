import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/About_us/About_us.dart';
import 'package:giggles_safer_web/Our_network/Our_network.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileLayoutHome extends StatefulWidget {
  const MobileLayoutHome({super.key});

  @override
  State<MobileLayoutHome> createState() => _MobileLayoutHomeState();
}

class _MobileLayoutHomeState extends State<MobileLayoutHome> {
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
                                                              AboutUs(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  "About us",
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 5,
                                              ),
                                              child: CircleAvatar(
                                                backgroundColor: Color.fromARGB(
                                                  255,
                                                  219,
                                                  90,
                                                  210,
                                                ),
                                                radius: 15,
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.phone,
                                                    size: 15,
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
                                            SizedBox(
                                              height: screenHeight * 0.045,
                                              child: ElevatedButton(
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
                                                  padding:
                                                      WidgetStatePropertyAll(
                                                        EdgeInsets.symmetric(
                                                          horizontal:
                                                              screenWidth *
                                                              0.02,
                                                          vertical:
                                                              screenHeight *
                                                              0.005,
                                                        ),
                                                      ),
                                                  shape: WidgetStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            30,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  "Explore more",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize:
                                                        screenWidth * 0.03,
                                                    fontWeight: FontWeight.w500,
                                                  ),
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
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          SizedBox(
                            child: Container(
                              width: screenWidth,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
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
                                    child: Image.asset(
                                      'assets/images/About_Us.jpg',
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
                                child: Container(
                                  child: Text(
                                    "About Us",
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 7.5,
                                ),
                                child: Container(
                                  color: Colors.transparent,
                                  child: Text(
                                    "Founded with a vision to make safety accessible to every women, Safer began as a response to the growing need for innovative safety solutions.What started as a small initiative to leverage technology for women's security has evolved into a comprehensive platform combining drones and secure hubs. Over the years, our commitment to empowering women has driven us to create cutting-edge solutions that ensure help is always within reach. Safer's  journey is fueled by the belief that every women deserves to feel confident and protected,no matter where life takes her.",
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
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
                                      horizontal: screenWidth * 0.045,
                                      vertical: screenHeight * 0.005,
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
                                      builder: (context) => AboutUs(),
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
                                child: Container(
                                  color: Colors.transparent,
                                  child: Text(
                                    "Our Network",
                                    style: GoogleFonts.spaceMono(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Container(
                                  color: Colors.transparent,
                                  child: Text(
                                    "Safer operates through a growing network of advanced drones and strategically placed secure hubs, ensuring rapid response and reliable support. With coverage expanding across cities, we are dedicated to creating a safety net that empowers women wherever they are.",
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
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
                                      horizontal: screenWidth * 0.045,
                                      vertical: screenHeight * 0.005,
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
                                    fontSize: screenWidth * 0.03,
                                    fontWeight: FontWeight.w600,
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
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              _buildTestimonial(
                                'assets/images/Test1.jpg',
                                '"Knowing there’s a secure hub\nnearby makes me feel safer when\nI’m out alone."',
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
                                '"The drone assistance feature is\na game-changer for women’s\nsafety. Thank you, Safer!"',
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
                                ' Once the SOS button is pressed in the Safer App, a drone is immediately activated and will reach the location within minutes. A secure hub personnel is also dispatched and typically arrives at the scene within 10 minutes of the alert.',
                              ),
                              _buildAnswers(
                                'What is a secure hub, and how do i locate one near me?',
                                ' A secure hub is Safer’s on-ground interconnected support team, ready to assist users during emergencies or unsafe situations. To find one near you, simply press the SOS button in the Safer App, and help will be dispatched to your location.',
                              ),
                              _buildAnswers(
                                'Are the drones equipped with cameras or tracking devices?',
                                ' Yes, Safer’s drones are equipped with cameras and tracking devices. Once the drone identifies you, it will follow you to ensure continuous monitoring, capturing footage for legal evidence, and helping responders locate you quickly and accurately.',
                              ),
                              _buildAnswers(
                                ' Is my data safe and secure?',
                                ' Yes, your data is completely safe and secure with us. We use advanced encryption protocols and follow strict privacy policies to ensure that your personal information remains protected at all times. Your safety and trust are our top priorities.',
                              ),
                              _buildAnswers(
                                'Is there a customer support helpline available?',
                                ' Yes, Safer offers 24/7 customer support to ensure user safety and assist with any concerns at any time. You can reach us anytime at mail_id.com.',
                              ),
                              _buildAnswers(
                                'Does the app work without an internet connection?',
                                ' No, the app requires an active internet connection to function properly. We recommend staying within network coverage to ensure access to all safety features when needed.',
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
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
                            padding: const EdgeInsets.symmetric(horizontal: 40),
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
                                          onPressed: () {},
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
                                                    onTap: () {},
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
                                                    onTap: () {},
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

  Widget _buildAnswers(String question, String answer) {
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
                children: [
                  Text(
                    answer,
                    style: GoogleFonts.spaceGrotesk(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
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

  Widget _buildCarouselItem(String text, Color color, double screenWidth) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          // width: screenWidth * 0.10312,
          width: screenWidth * 0.2,
          color: color,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  text,
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 10,
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
                                  builder: (context) => AboutUs(),
                                ),
                              );
                            },
                            child: AutoSizeText(
                              "About us",
                              style: GoogleFonts.spaceGrotesk(
                                color: Colors.white,
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
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
                    child: Text(
                      "© 2025 Safer | Privacy Policy | Terms of Service",
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: screenWidth * 0.04,
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
