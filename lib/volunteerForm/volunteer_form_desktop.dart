import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'package:giggles_safer_web/confirm_Page/confirmPage.dart';
import 'package:giggles_safer_web/services/volunteer_service.dart';

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
  bool _isSubmitting = false;
  final VolunteerService _volunteerService = VolunteerService();

  void _log(String message) {
    html.window.console.log(message);
    debugPrint(message);
  }

  @override
  void initState() {
    super.initState();
    // Add listeners to all controllers to check form validity
    _nameController.addListener(_checkFormValidity);
    _emailController.addListener(_checkFormValidity);
    _ageController.addListener(_checkFormValidity);
    answer.addListener(_checkFormValidity);

    // Test Supabase connection
    _testSupabaseConnection();
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
    if (!mounted) return;

    final isValid =
        _nameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _ageController.text.isNotEmpty &&
        answer.text.isNotEmpty &&
        city != null;

    if (isValid != _isFormValid) {
      setState(() {
        _isFormValid = isValid;
      });
    }
  }

  Future<void> _testSupabaseConnection() async {
    try {
      await _volunteerService.testConnection();
    } catch (e) {
      _log('Failed to connect to Supabase: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Warning: Database connection issue. Please try again later.',
            ),
            backgroundColor: Colors.orange,
            duration: Duration(seconds: 5),
          ),
        );
      }
    }
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
                            _isFormValid && !_isSubmitting
                                ? () {
                                  _showConfirmPage();
                                }
                                : null,
                        child:
                            _isSubmitting
                                ? SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.black,
                                    ),
                                  ),
                                )
                                : Text(
                                  "Submit",
                                  style: GoogleFonts.spaceGrotesk(
                                    color:
                                        _isFormValid
                                            ? Colors.black
                                            : Colors.white54,
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

  void _showConfirmPage() async {
    _log('Submit button pressed');

    if (_isSubmitting) {
      _log('Already submitting, ignoring click');
      return;
    }

    if (!_isFormValid) {
      _log('Form is not valid, ignoring submission');
      return;
    }

    setState(() {
      _isSubmitting = true;
    });
    _log('Set isSubmitting to true');

    try {
      _log('Starting form submission');

      await _volunteerService.submitVolunteerForm(
        fullName: _nameController.text,
        location: city ?? '',
        emailId: _emailController.text,
        age: int.parse(_ageController.text),
        phoneNumber: _phonenumberController.text,
        whyDoYouWantToBeAVolunteer: answer.text,
      );

      _log('Form submitted successfully');

      if (!mounted) {
        _log('Widget not mounted after submission');
        return;
      }

      // Clear the form
      _nameController.clear();
      _emailController.clear();
      _ageController.clear();
      _phonenumberController.clear();
      answer.clear();
      setState(() {
        city = 'Chennai';
      });

      showDialog(context: context, builder: (context) => ConfirmPage());
    } catch (e) {
      _log('Error submitting form: $e');
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to submit form: ${e.toString()}'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
        _log('Set isSubmitting back to false');
      }
    }
  }
}
