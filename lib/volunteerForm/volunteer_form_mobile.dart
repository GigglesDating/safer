import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:giggles_safer_web/confirm_Page/confirm_mobile.dart';
import 'package:giggles_safer_web/services/volunteer_service.dart';

class VolunteerformMobile extends StatefulWidget {
  const VolunteerformMobile({super.key});

  @override
  State<VolunteerformMobile> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<VolunteerformMobile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController answer = TextEditingController();
  String? _city;
  bool _isFormValid = false;
  final VolunteerService _volunteerService = VolunteerService();
  bool _isSubmitting = false;

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
          _city != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: screenHeight * 0.7,
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
                toolbarHeight: screenHeight * 0.055,
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.highlight_remove,
                      color: Colors.white,
                      size: screenWidth * 0.08,
                    ),
                  ),
                ],
              ),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Join Our Heroes',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.spaceMono(
                              color: Colors.white,
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.04,
                            bottom: screenHeight * 0.01,
                          ),
                          child: Text(
                            "Full Name",
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: _nameController,
                            style: TextStyle(color: Colors.white70),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.015,
                                vertical: screenHeight * 0.012,
                              ),
                              hintText: 'Enter your name',
                              hintStyle: GoogleFonts.spaceGrotesk(
                                color: Colors.white70,
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w700,
                              ),
                              filled: true,
                              fillColor: Colors.transparent.withOpacity(0.35),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 211, 84, 173),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.02,
                            left: screenWidth * 0.04,
                            bottom: screenHeight * 0.01,
                          ),
                          child: Text(
                            "E-mail Id",
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: _emailController,
                            style: TextStyle(color: Colors.white70),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.015,
                                vertical: screenHeight * 0.012,
                              ),
                              hintText: 'Enter your E-mail ID',
                              hintStyle: GoogleFonts.spaceGrotesk(
                                color: Colors.white70,
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w700,
                              ),
                              filled: true,
                              fillColor: Colors.transparent.withOpacity(0.35),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 211, 84, 173),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.04,
                            bottom: screenHeight * 0.01,
                          ),
                          child: Text(
                            "Age",
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: _ageController,
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            style: TextStyle(color: Colors.white70),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.015,
                                vertical: screenHeight * 0.012,
                              ),
                              hintText: 'Enter your age',
                              hintStyle: GoogleFonts.spaceGrotesk(
                                color: Colors.white70,
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w700,
                              ),
                              filled: true,
                              fillColor: Colors.transparent.withOpacity(0.35),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 211, 84, 173),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.04,
                            bottom: screenHeight * 0.01,
                          ),
                          child: Text(
                            "Phone number",
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: _phonenumberController,
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            style: TextStyle(color: Colors.white70),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.015,
                                vertical: screenHeight * 0.012,
                              ),
                              hintText: 'phone number',
                              prefixText: '91+  ',
                              hintStyle: GoogleFonts.spaceGrotesk(
                                color: Colors.white70,
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w700,
                              ),
                              filled: true,
                              fillColor: Colors.transparent.withOpacity(0.35),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 211, 84, 173),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.04,
                            bottom: screenHeight * 0.01,
                          ),
                          child: Text(
                            "Location",
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            width: screenWidth * 0.8,
                            child: DropdownButtonFormField<String>(
                              value: _city,
                              style: TextStyle(color: Colors.white70),
                              dropdownColor: Colors.black.withAlpha(204),
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.015,
                                  vertical: screenHeight * 0.015,
                                ),
                                hintStyle: GoogleFonts.spaceGrotesk(
                                  color: Colors.white70,
                                  fontSize: screenWidth * 0.012,
                                ),
                                filled: true,
                                fillColor: Colors.transparent.withOpacity(0.35),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon: Icon(
                                  Icons.location_on,
                                  color: Colors.white70,
                                  size: screenWidth * 0.07,
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
                                  _city = value;
                                  _checkFormValidity();
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Center(
                          child: Text(
                            "Why do you want to be a volunteer?",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: answer,
                            maxLines: 7,
                            minLines: 7,
                            maxLength: 500,
                            style: TextStyle(color: Colors.white70),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.05,
                                vertical: screenHeight * 0.012,
                              ),
                              hintText:
                                  'Your answer should not exceed 500 words.',
                              hintStyle: GoogleFonts.spaceGrotesk(
                                color: Colors.white70,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w700,
                              ),
                              filled: true,
                              fillColor: Colors.transparent.withOpacity(0.35),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 211, 84, 173),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
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
                                  horizontal: screenWidth * 0.08,
                                  vertical: screenHeight * 0.01,
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
                                      width: screenWidth * 0.05,
                                      height: screenWidth * 0.05,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
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
                                        fontSize: screenWidth * 0.05,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                      ],
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
    setState(() {
      _isSubmitting = true;
    });

    try {
      await _volunteerService.submitVolunteerForm(
        fullName: _nameController.text,
        location: _city ?? '',
        emailId: _emailController.text,
        age: int.parse(_ageController.text),
        phoneNumber: _phonenumberController.text,
        whyDoYouWantToBeAVolunteer: answer.text,
      );

      if (mounted) {
        showDialog(context: context, builder: (context) => ConfirmPageMobile());
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to submit form. Please try again.'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }
}
