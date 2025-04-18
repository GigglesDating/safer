import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KnowMore extends StatefulWidget {
  final String text;
  final String name;
  const KnowMore({super.key, required this.text, required this.name});

  @override
  State<KnowMore> createState() => _KnowMoreState();
}

class _KnowMoreState extends State<KnowMore> {
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
              // Positioned.fill(
              //   child: Container(
              //     height: double.infinity,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.all(Radius.circular(30)),
              //       color: const Color.fromARGB(255, 86, 35, 76).withAlpha(170),
              //     ),
              //   ),
              // ),
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
                  children: [
                    Center(
                      child: Text(
                        widget.name,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 211, 84, 173),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        widget.text,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 21,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
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
