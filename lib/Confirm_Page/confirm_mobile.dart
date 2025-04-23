import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giggles_safer_web/Home/Home.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmPageMobile extends StatefulWidget {
  const ConfirmPageMobile({super.key});

  @override
  State<ConfirmPageMobile> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<ConfirmPageMobile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      child: Container(
        height: screenHeight * 0.75,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Color.fromARGB(255, 211, 84, 173)),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.asset(
                  'assets/images/Volunteer.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: const Color.fromARGB(255, 86, 35, 76).withAlpha(170),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.transparent.withAlpha(150),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  Center(
                    child: SvgPicture.asset('assets/images/confirmtick.svg'),
                  ),
                  SizedBox(height: screenHeight * 0.025),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Thank You for Signing Up!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.spaceMono(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Your application to be a volunteer has been successfully submitted. We’re excited to have you on board and will reach out to you soon with the next steps.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        side: WidgetStatePropertyAll(
                          BorderSide(
                            color: Colors.black.withAlpha(100),
                            width: 2,
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(
                            255,
                            211,
                            84,
                            173,
                          ).withAlpha(255),
                        ),
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.09,
                            vertical: screenHeight * 0.012,
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
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        "Home",
                        style: GoogleFonts.spaceGrotesk(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.02,
                    right: screenWidth * 0.02,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.highlight_remove,
                      color: Colors.white,
                      size: screenWidth * 0.08,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
