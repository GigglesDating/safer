import 'package:flutter/material.dart';
import 'package:giggles_safer_web/Confirm_Page/ConfirmPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Volunteerform extends StatefulWidget {
  const Volunteerform({super.key});

  @override
  State<Volunteerform> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<Volunteerform> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController answer = TextEditingController();
  String? city = 'Chennai';
  bool _isFormValid = false;

  Future<void> submitForm() async {
    final url = Uri.parse(
      'https://docs.google.com/forms/d/e/1FAIpQLSdmnffgzfHl-JTqWCryStPUqcju9uCsdHyK3BNHPfxCLJAD5g/formResponse',
    );

    final response = await http.post(
      url,
      body: {
        'entry.512317767': _nameController.text,
        'entry.379583368': _phonenumberController.text,
        'entry.362813398': _emailController.text,
        'entry.1189910533': city,
        'entry.378459970': answer.text,
      },
    );

    if (response.statusCode == 200 || response.statusCode == 302) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Form submitted successfully")));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Submission failed")));
    }
  }

  @override
  void initState() {
    super.initState();
    // Add listeners to all controllers to check form validity
    _nameController.addListener(_checkFormValidity);
    _emailController.addListener(_checkFormValidity);
    _ageController.addListener(_checkFormValidity);
    answer.addListener(_checkFormValidity);
  }

  @override
  void dispose() {
    // Clean up controllers
    _nameController.dispose();
    _emailController.dispose();
    _ageController.dispose();
    answer.dispose();
    super.dispose();
  }

  void _checkFormValidity() {
    setState(() {
      _isFormValid =
          _nameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _ageController.text.isNotEmpty &&
          answer.text.isNotEmpty &&
          city != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: screenHeight * 0.85,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
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

            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                toolbarHeight: screenHeight * 0.25,
                centerTitle: true,
                title: Text(
                  'Join Our Heroes',
                  style: GoogleFonts.spaceMono(
                    color: Colors.white,
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                actions: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                          right: screenWidth * 0.02,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.highlight_remove,
                            color: Colors.white,
                            size: screenWidth * 0.025,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight * 0.01),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.04,
                                bottom: screenHeight * 0.01,
                              ),
                              child: Text(
                                "Full Name",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.014,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                right: screenWidth * 0.080,
                                bottom: screenHeight * 0.01,
                              ),
                              child: Text(
                                "Location",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.014,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.25),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.03),
                            SizedBox(
                              width: screenWidth * 0.35,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                ),
                                child: TextField(
                                  controller: _nameController,
                                  style: TextStyle(color: Colors.white70),
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.015,
                                      vertical: screenHeight * 0.025,
                                    ),
                                    hintText: 'Enter your name',
                                    hintStyle: GoogleFonts.spaceGrotesk(
                                      color: Colors.white70,
                                      fontSize: screenWidth * 0.012,
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent.withOpacity(
                                      0.35,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          211,
                                          84,
                                          173,
                                        ),
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.028),
                            SizedBox(
                              width: screenWidth * 0.35,
                              child: DropdownButtonFormField<String>(
                                value: city,
                                style: TextStyle(color: Colors.white70),
                                dropdownColor: Colors.black.withAlpha(204),
                                decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.015,
                                    vertical: screenHeight * 0.025,
                                  ),
                                  // hintText: 'Enter your location',
                                  hintStyle: GoogleFonts.spaceGrotesk(
                                    color: Colors.white70,
                                    fontSize: screenWidth * 0.012,
                                  ),
                                  filled: true,
                                  fillColor: Colors.transparent.withOpacity(
                                    0.35,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                    size: screenWidth * 0.02,
                                  ),
                                ),
                                items:
                                    ['Bangalore', 'Mumbai', 'Delhi', 'Chennai']
                                        .map(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ),
                                        )
                                        .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    city = value;
                                    _checkFormValidity();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.04,
                                bottom: screenHeight * 0.01,
                                top: screenHeight * 0.050,
                              ),
                              child: Text(
                                "Email Id",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.014,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.32,
                                bottom: screenHeight * 0.001,
                                top: screenHeight * 0.025,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Why do you want to be a volunteer?",
                                    style: GoogleFonts.spaceGrotesk(
                                      color: Colors.white,
                                      fontSize: screenWidth * 0.014,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.38,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: screenWidth * 0.04,
                                ),
                                child: TextField(
                                  controller: _emailController,
                                  style: TextStyle(color: Colors.white70),
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.015,
                                      vertical: screenHeight * 0.025,
                                    ),
                                    hintText: 'Enter your email id',
                                    hintStyle: GoogleFonts.spaceGrotesk(
                                      color: Colors.white70,
                                      fontSize: screenWidth * 0.012,
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent.withOpacity(
                                      0.35,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.04,
                                bottom: screenHeight * 0.01,
                                top: screenHeight * 0.040,
                              ),
                              child: Text(
                                "Age",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.014,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                                bottom: screenHeight * 0.01,
                                top: screenHeight * 0.040,
                              ),
                              child: Text(
                                "Phone Number",
                                style: GoogleFonts.spaceGrotesk(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.014,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.1,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: screenWidth * 0.04,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  maxLength: 2,
                                  controller: _ageController,
                                  style: TextStyle(color: Colors.white70),
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.015,
                                      vertical: screenHeight * 0.025,
                                    ),
                                    hintText: 'Age',
                                    hintStyle: GoogleFonts.spaceGrotesk(
                                      color: Colors.white70,
                                      fontSize: screenWidth * 0.012,
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent.withOpacity(
                                      0.35,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.28,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: screenWidth * 0.015,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  maxLength: 10,
                                  controller: _phonenumberController,
                                  style: TextStyle(color: Colors.white70),
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.015,
                                      vertical: screenHeight * 0.025,
                                    ),
                                    prefixText: '+91  ',
                                    hintText: 'Phone number',
                                    hintStyle: GoogleFonts.spaceGrotesk(
                                      color: Colors.white70,
                                      fontSize: screenWidth * 0.012,
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent.withOpacity(
                                      0.35,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: screenHeight * 0.2),
                      ],
                    ),
                  ),

                  Positioned(
                    top: screenHeight * 0.23,
                    right: screenWidth * 0.041,
                    child: SizedBox(
                      width: screenWidth * 0.35,
                      child: TextField(
                        maxLength: 500,
                        controller: answer,
                        minLines: 8,
                        maxLines: 8,
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.015,
                            vertical: screenHeight * 0.01,
                          ),
                          hintText: 'Your answer should not exceed 500 words',
                          hintStyle: GoogleFonts.spaceGrotesk(
                            color: Colors.white70,
                            fontSize: screenWidth * 0.012,
                          ),
                          filled: true,
                          fillColor: Colors.transparent.withOpacity(0.35),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: screenHeight * 0.50,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          side: WidgetStatePropertyAll(
                            BorderSide(
                              color: Colors.black.withAlpha(100),
                              width: 2,
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            _isFormValid
                                ? const Color.fromARGB(
                                  255,
                                  211,
                                  84,
                                  173,
                                ).withAlpha(255)
                                : Colors.grey.withAlpha(255),
                          ),
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.025,
                              vertical: screenHeight * 0.025,
                            ),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed:
                            _isFormValid
                                ? () {
                                  _showConfirmPage();
                                  submitForm();
                                }
                                : null,
                        child: Text(
                          "Submit",
                          style: GoogleFonts.spaceGrotesk(
                            color: _isFormValid ? Colors.black : Colors.white54,
                            fontSize: screenWidth * 0.012,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmPage() {
    showDialog(context: context, builder: (context) => ConfirmPage());
  }
}
