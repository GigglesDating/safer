import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/About_us/About_us.dart';
import 'package:giggles_safer_web/Our_network/Our_network.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletLayoutHome extends StatefulWidget {
  const TabletLayoutHome({super.key});

  @override
  State<TabletLayoutHome> createState() => _TabletLayoutHomeState();
}

class _TabletLayoutHomeState extends State<TabletLayoutHome> {

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
                                  'assets/images/TabletLayout.png',
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
                                          top: 70,
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
                                          top: 70,
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
                                          top: 70,
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 60,
                                          left: 200,
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
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
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
                                                  horizontal:
                                                      screenWidth * 0.025,
                                                  vertical: screenHeight * 0.01,
                                                ),
                                              ),
                                              shape: WidgetStatePropertyAll(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "Explore more",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: screenWidth * 0.015,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                            Text(
                              "About Us",
                              style: GoogleFonts.spaceMono(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Founded with a vision to make safety accessible to every women,\nSafer began as a response to the growing need for innovative\nsafety solutions. What started as a small initiative to leverage\ntechnology for women's security has evolved into a comprehensive\nplatform combining drones and secure hubs. Over the years, our\ncommitment to empowering women has driven us to create cutting-\nedge solutions that ensure help is always within reach. Safer's\njourney is fueled by the belief that every women deserves to feel\nconfident and protected,no matter where life takes her.",
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
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
                                    builder: (context) => AboutUs(),
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
                            Text(
                              "Safer operates through a growing network of advanced drones and\nstrategically placed secure hubs, ensuring rapid response and\nreliable support. With coverage expanding across cities, we are\ndedicated to creating a safety net that empowers women wherever\nthey are.",
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
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
                              'assets/images/Test1.jpg',
                              '"Knowing there’s a secure hub nearby makes me feel\n                      safer when I’m out alone."',
                              '-shreya Sharma',
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            _buildTestimonial(
                              'assets/images/Test2.jpg',
                              '"Safer gave me peace of mind during a late-night\n    commute. The quick response was incredible!"',
                              '-Neha Sharma',
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            _buildTestimonial(
                              'assets/images/Test3.jpg',
                              '"The drone assistance feature is a game-changer for\n            women’s safety. Thank you, Safer!"',
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
                            Text(
                              "Your safety is just a tap away! Download the Safer app now on the\nPlay Store and App Store to access real-time assistance, secure hubs,\nand more—anytime, anywhere.",
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
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
                                    padding: const EdgeInsets.only(left: 20),
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
                                        Text(
                                          "Subscribe to Safer for updates, safety tips, and the latest features. Join our mission to create a safer world—one step\nat a time!",
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
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
                                                onTap: () {},
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
                                                onTap: () {},
                                                child: SvgPicture.asset(
                                                  'assets/images/Pinterest.svg',
                                                  height: 45,
                                                  width: 45,
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
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
      },
    );
  }

  Widget _buildCarouselItem(String text, Color color, double screenWidth) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          // width: screenWidth * 0.10312,
          width: screenWidth * 0.12,
          color: color,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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

  Widget _buildAnswers(String question, String answer) {
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
