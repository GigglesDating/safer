import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KnowMoreMobile extends StatefulWidget {
  final String text;
  final String name;
  const KnowMoreMobile({super.key, required this.text, required this.name});

  @override
  State<KnowMoreMobile> createState() => _KnowMoreMobileState();
}

class _KnowMoreMobileState extends State<KnowMoreMobile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      backgroundColor: Colors.black,
      child: Container(
        height: screenHeight * 0.7,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 211, 84, 173)),
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.black.withOpacity(0.02),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 211, 84, 173),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          widget.name,
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 211, 84, 173),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Center(
                      child: Text(
                        widget.text,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          // letterSpacing: 0.7,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
