// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:giggles_safer_web/Home/Home.dart';
// import 'package:giggles_safer_web/Our_network/Our_network.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:video_player/video_player.dart';

// class DesktopLayoutAbout extends StatefulWidget {
//   const DesktopLayoutAbout({super.key});

//   @override
//   State<DesktopLayoutAbout> createState() => _DesktopLayoutState();
// }

// class _DesktopLayoutState extends State<DesktopLayoutAbout> {
//   late VideoPlayerController _introController;
//   bool _isIntroPlaying = false;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize with your video URL
//     _introController = VideoPlayerController.asset('assets/video/phVideo2.mp4')
//       ..initialize().then((_) {
//         setState(() {});
//       });

//     // Add listener for video completion
//     _introController.addListener(() {
//       if (_introController.value.position >= _introController.value.duration) {
//         _introController.seekTo(Duration.zero);
//         _introController.play();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _introController.dispose();
//     super.dispose();
//   }

//   void playpause() {
//     // if (!_introController.value.isInitialized) return;
//     setState(() {
//       _isIntroPlaying = !_isIntroPlaying;
//       // _introController.play();
//       if (_isIntroPlaying) {
//         _introController.play();
//       }
//       if (!_isIntroPlaying) {
//         _introController.pause();
//       }
//     });
//   }

//   final Uri _instagramUrl = Uri.parse(
//     'https://www.instagram.com/_so_called_abhi_shek/',
//   );

//   Future<void> _launchInstagram() async {
//     if (!await launchUrl(_instagramUrl, mode: LaunchMode.externalApplication)) {
//       throw 'Could not launch $_instagramUrl';
//     }
//   }

//   final Uri _twitterurl = Uri.parse('https://x.com/GigglesSafer');

//   Future<void> _launchTwitter() async {
//     if (!await launchUrl(_twitterurl, mode: LaunchMode.externalApplication)) {
//       throw 'Could not launch $_twitterurl';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(244, 0, 0, 0),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             _buildHeader(screenHeight, screenWidth),
//             Stack(
//               children: [
//                 Image.asset('assets/images/Ellipse 2.png'),
//                 Positioned(
//                   right: 0,
//                   child: Image.asset('assets/images/Ellipse 4.png'),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: screenHeight * 0.1),
//                     // Who We Are Section

                    
//                     Container(
//                       height: screenHeight * 0.52,
//                       width: double.infinity,
//                       color: Colors.transparent,
//                       child: SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             Stack(
//                               children: [
//                                 Row(
//                                   children: [
//                                     SizedBox(width: screenHeight * 0.13),
//                                     Text(
//                                       "WHO WE ARE",
//                                       style: GoogleFonts.spaceMono(
//                                         fontSize: 22,
//                                         fontWeight: FontWeight.w500,
//                                         color: const Color.fromARGB(
//                                           255,
//                                           223,
//                                           126,
//                                           240,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                     top: 30,
//                                     left: 100,
//                                   ),
//                                   child: Text(
//                                     "We're Safer, a technology-driven safety platform\ndedicated to empowering women. Our journey began\nwith the vision to provide real-time assistance\nthrough drones and secure hubs, ensuring no woman\never feels unsafe. We're not just building a product—\nwe're building trust, security, and a community that\nstands together for women's safety.",
//                                     style: GoogleFonts.spaceGrotesk(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                     top: 220,
//                                     left: 100,
//                                   ),
//                                   child: Text(
//                                     "Our mission",
//                                     style: GoogleFonts.spaceMono(
//                                       fontSize: 22,
//                                       fontWeight: FontWeight.w500,
//                                       color: const Color.fromARGB(
//                                         255,
//                                         223,
//                                         126,
//                                         240,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                     top: 250,
//                                     left: 100,
//                                   ),
//                                   child: Text(
//                                     "To make safety accessible, reliable, and innovative for\nevery woman, everywhere.",
//                                     style: GoogleFonts.spaceGrotesk(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                     top: 330,
//                                     left: 100,
//                                   ),
//                                   child: Text(
//                                     "Discover how safer is redefining safety\nwith innovative technology.Watch our story",
//                                     style: GoogleFonts.spaceGrotesk(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 Row(
//                                   children: [
//                                     // SizedBox(width: screenWidth * 0.5),
//                                     Spacer(),
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                         right: 150,
//                                       ),
//                                       child: Container(
//                                         height: screenHeight * 0.52,
//                                         width: 450,
//                                         decoration: BoxDecoration(
//                                           color: Colors.transparent,
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(40),
//                                           ),
//                                         ),
//                                         child: Stack(
//                                           children: [
//                                             ClipRRect(
//                                               borderRadius:
//                                                   BorderRadius.circular(12),
//                                               child: SizedBox(
//                                                 height: screenHeight * 0.518,
//                                                 width: 450,
//                                                 child:
//                                                     _introController
//                                                             .value
//                                                             .isInitialized
//                                                         ? FittedBox(
//                                                           fit: BoxFit.cover,
//                                                           child: SizedBox(
//                                                             width:
//                                                                 _introController
//                                                                     .value
//                                                                     .size
//                                                                     .width,
//                                                             height:
//                                                                 _introController
//                                                                     .value
//                                                                     .size
//                                                                     .height,
//                                                             child: VideoPlayer(
//                                                               _introController,
//                                                             ),
//                                                           ),
//                                                         )
//                                                         : const Center(
//                                                           child:
//                                                               CircularProgressIndicator(),
//                                                         ),
//                                               ),
//                                             ),
//                                             _isIntroPlaying
//                                                 ? SizedBox()
//                                                 : SizedBox(
//                                                   height: double.infinity,
//                                                   width: double.infinity,
//                                                   child: Image.asset(
//                                                     'assets/images/template.png',
//                                                     fit: BoxFit.cover,
//                                                   ),
//                                                 ),
//                                             Center(
//                                               child: IconButton(
//                                                 onPressed: () {
//                                                   playpause();
//                                                 },
//                                                 icon:
//                                                     _isIntroPlaying
//                                                         ? Icon(null)
//                                                         : Icon(
//                                                           Icons
//                                                               .play_circle_outline,
//                                                           color: Colors.white,
//                                                           size: 50,
//                                                         ),
//                                               ),
//                                             ),
//                                             GestureDetector(
//                                               onTap: playpause,
//                                               child: Container(
//                                                 height: double.infinity,
//                                                 width: double.infinity,
//                                                 color: Colors.transparent,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: screenHeight * 0.08),
//                     // Stats Section
//                     Container(
//                       width: double.infinity,
//                       color: Colors.transparent,
//                       child: SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                               height: 100,
//                               width: 320,
//                               decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                                 border: Border(
//                                   right: BorderSide(
//                                     color: const Color.fromARGB(
//                                       255,
//                                       223,
//                                       126,
//                                       240,
//                                     ).withOpacity(0.5),
//                                   ),
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     '10k+',
//                                     style: GoogleFonts.spaceMono(
//                                       fontSize: 55,
//                                       fontWeight: FontWeight.w600,
//                                       color: const Color.fromARGB(
//                                         255,
//                                         223,
//                                         126,
//                                         240,
//                                       ),
//                                     ),
//                                   ),
//                                   Text(
//                                     'App Downloads',
//                                     style: GoogleFonts.spaceGrotesk(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 100,
//                               width: 320,
//                               decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                                 border: Border(
//                                   right: BorderSide(
//                                     color: const Color.fromARGB(
//                                       255,
//                                       223,
//                                       126,
//                                       240,
//                                     ).withOpacity(0.5),
//                                   ),
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     '120+',
//                                     style: GoogleFonts.spaceMono(
//                                       fontSize: 55,
//                                       fontWeight: FontWeight.w600,
//                                       color: const Color.fromARGB(
//                                         255,
//                                         223,
//                                         126,
//                                         240,
//                                       ),
//                                     ),
//                                   ),
//                                   Text(
//                                     'Safe Interventions',
//                                     style: GoogleFonts.spaceGrotesk(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 100,
//                               width: 320,
//                               decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                                 border: Border(
//                                   right: BorderSide(
//                                     color: const Color.fromARGB(
//                                       255,
//                                       223,
//                                       126,
//                                       240,
//                                     ).withOpacity(0.5),
//                                   ),
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     '15+',
//                                     style: GoogleFonts.spaceMono(
//                                       fontSize: 55,
//                                       fontWeight: FontWeight.w600,
//                                       color: const Color.fromARGB(
//                                         255,
//                                         223,
//                                         126,
//                                         240,
//                                       ),
//                                     ),
//                                   ),
//                                   Text(
//                                     'Cities Covered',
//                                     style: GoogleFonts.spaceGrotesk(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 100,
//                               width: 320,
//                               decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "300+",
//                                     style: GoogleFonts.spaceMono(
//                                       fontSize: 55,
//                                       fontWeight: FontWeight.w600,
//                                       color: const Color.fromARGB(
//                                         255,
//                                         223,
//                                         126,
//                                         240,
//                                       ),
//                                     ),
//                                   ),
//                                   Text(
//                                     "Secure Hubs",
//                                     style: GoogleFonts.spaceGrotesk(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: screenHeight * 0.08),
//                     // Cards Section
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: screenWidth * 0.075),
//                           child: HoverCard(
//                             screenHeight: screenHeight,
//                             screenWidth: screenWidth,
//                             imagePath: 'assets/images/Events-1.jpg',
//                             label: Text(
//                               'Events',
//                               style: GoogleFonts.spaceMono(
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.w600,
//                                 color: const Color.fromARGB(255, 223, 126, 240),
//                               ),
//                             ),
//                             hoverButton: ElevatedButton(
//                               style: ButtonStyle(
//                                 backgroundColor: WidgetStatePropertyAll(
//                                   const Color.fromARGB(255, 219, 90, 210),
//                                 ),
//                                 padding: WidgetStatePropertyAll(
//                                   EdgeInsets.symmetric(
//                                     horizontal: screenWidth * 0.016,
//                                     vertical: screenHeight * 0.023,
//                                   ),
//                                 ),
//                                 shape: WidgetStatePropertyAll(
//                                   RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                 ),
//                               ),
//                               onPressed: () {},
//                               child: Text(
//                                 "Know more",
//                                 style: GoogleFonts.spaceGrotesk(
//                                   color: Colors.black,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),

//                         HoverCard(
//                           screenHeight: screenHeight,
//                           screenWidth: screenWidth,
//                           imagePath: 'assets/images/News.jpg',
//                           label: Text(
//                             'NEWS',
//                             style: GoogleFonts.spaceMono(
//                               fontSize: 40,
//                               fontWeight: FontWeight.w600,
//                               color: const Color.fromARGB(255, 223, 126, 240),
//                             ),
//                           ),
//                           hoverButton: ElevatedButton(
//                             style: ButtonStyle(
//                               backgroundColor: WidgetStatePropertyAll(
//                                 const Color.fromARGB(255, 219, 90, 210),
//                               ),
//                               padding: WidgetStatePropertyAll(
//                                 EdgeInsets.symmetric(
//                                   horizontal: screenWidth * 0.016,
//                                   vertical: screenHeight * 0.023,
//                                 ),
//                               ),
//                               shape: WidgetStatePropertyAll(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                               ),
//                             ),
//                             onPressed: () {},
//                             child: Text(
//                               "Know more",
//                               style: GoogleFonts.spaceGrotesk(
//                                 color: Colors.black,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: screenWidth * 0.075),
//                           child: HoverCard(
//                             screenHeight: screenHeight,
//                             screenWidth: screenWidth,
//                             imagePath: 'assets/images/Stories.jpg',
//                             label: Text(
//                               'STORIES',
//                               style: GoogleFonts.spaceMono(
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.w600,
//                                 color: const Color.fromARGB(255, 223, 126, 240),
//                               ),
//                             ),
//                             hoverButton: ElevatedButton(
//                               style: ButtonStyle(
//                                 backgroundColor: WidgetStatePropertyAll(
//                                   const Color.fromARGB(255, 219, 90, 210),
//                                 ),
//                                 padding: WidgetStatePropertyAll(
//                                   EdgeInsets.symmetric(
//                                     horizontal: screenWidth * 0.016,
//                                     vertical: screenHeight * 0.023,
//                                   ),
//                                 ),
//                                 shape: WidgetStatePropertyAll(
//                                   RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                 ),
//                               ),
//                               onPressed: () {},
//                               child: Text(
//                                 "Know more",
//                                 style: GoogleFonts.spaceGrotesk(
//                                   color: Colors.black,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),

//                     SizedBox(height: screenHeight * 0.08),

//                     // Footer
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: screenHeight * 0.05),
//             Positioned(
//               right: 0,
//               left: 0,
//               bottom: 0,
//               child: _buildFooter(screenHeight, screenWidth),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader(double screenHeight, double screenWidth) {
//     return Container(
//       width: double.infinity,
//       height: screenHeight * 0.15,
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         border: Border(
//           bottom: BorderSide(color: const Color.fromARGB(255, 223, 126, 240)),
//         ),
//       ),
//       child: Row(
//         children: [
//           SizedBox(width: screenWidth * 0.07),
//           Container(
//             height: screenHeight * 0.11,
//             width: screenWidth * 0.05,
//             color: Colors.transparent,
//             child: SvgPicture.asset('assets/images/Safer_logo.svg'),
//           ),
//           SizedBox(width: screenWidth * 0.32),
//           TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => homePage()),
//               );
//             },
//             child: Text(
//               "Home",
//               style: GoogleFonts.spaceGrotesk(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () {},
//             child: Text(
//               "About us",
//               style: GoogleFonts.spaceGrotesk(
//                 color: const Color.fromARGB(255, 223, 126, 240),
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => OurNetwork()),
//               );
//             },
//             child: Text(
//               "Our Network",
//               style: GoogleFonts.spaceGrotesk(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFooter(double screenHeight, double screenWidth) {
//     return Container(
//       height: screenHeight * 0.27,
//       width: double.infinity,
//       color: const Color.fromARGB(255, 255, 255, 255).withAlpha(15),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: screenHeight * 0.055),
//             Container(
//               height: screenHeight * 0.07,
//               width: screenWidth * 0.8,
//               color: Colors.transparent,
//               child: Row(
//                 children: [
//                   SvgPicture.asset('assets/images/Safer_logo.svg'),
//                   Spacer(),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => homePage()),
//                       );
//                     },
//                     child: Text(
//                       "Home",
//                       style: GoogleFonts.spaceGrotesk(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "About us",
//                       style: GoogleFonts.spaceGrotesk(
//                         color: const Color.fromARGB(255, 223, 126, 240),
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => OurNetwork()),
//                       );
//                     },
//                     child: Text(
//                       "Our Network",
//                       style: GoogleFonts.spaceGrotesk(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               height: screenHeight * 0.132,
//               width: screenWidth * 0.8,
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(
//                     color: const Color.fromARGB(255, 219, 90, 210),
//                   ),
//                 ),
//                 color: Colors.transparent,
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     "© 2025 Safer | Privacy Policy | Terms of Service",
//                     style: GoogleFonts.spaceGrotesk(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Spacer(),
//                   InkWell(
//                     onTap: () {
//                       _launchInstagram();
//                     },
//                     child: SvgPicture.asset('assets/images/InstagramLogo.svg'),
//                   ),
//                   SizedBox(width: screenWidth * 0.01),
//                   InkWell(
//                     onTap: () {
//                       _launchTwitter();
//                     },
//                     child: SvgPicture.asset('assets/images/TwitterLogo.svg'),
//                   ),
//                   SizedBox(width: screenWidth * 0.01),
//                   SvgPicture.asset('assets/images/MetaLogo.svg'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HoverCard extends StatefulWidget {
//   final double screenHeight;
//   final double screenWidth;
//   final String imagePath;
//   final Widget label;
//   final Widget hoverButton;

//   const HoverCard({
//     super.key,
//     required this.screenHeight,
//     required this.screenWidth,
//     required this.imagePath,
//     required this.label,
//     required this.hoverButton,
//   });

//   @override
//   State<HoverCard> createState() => _HoverCardState();
// }

// class _HoverCardState extends State<HoverCard> {
//   bool _isHovering = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovering = true),
//       onExit: (_) => setState(() => _isHovering = false),
//       child: Container(
//         height: widget.screenHeight * 0.44,
//         width: widget.screenWidth * 0.25,
//         decoration: BoxDecoration(
//           color: Colors.transparent,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: const Color.fromARGB(255, 223, 126, 240)),
//         ),
//         child: Stack(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.asset(
//                 widget.imagePath,
//                 fit: BoxFit.cover,
//                 height: widget.screenHeight * 0.44,
//               ),
//             ),
//             if (_isHovering)
//               Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(
//                     255,
//                     223,
//                     126,
//                     240,
//                   ).withOpacity(0.2),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.black.withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             Center(child: _isHovering ? widget.hoverButton : widget.label),
//           ],
//         ),
//       ),
//     );
//   }
// }
