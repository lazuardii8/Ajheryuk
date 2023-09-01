import 'package:ajheryuk/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svgs/Logo Mark.svg"),
              RichText(
                text: TextSpan(
                    text: "Ajher",
                    style: GoogleFonts.prompt(
                      color: Color(0xffEC5F5F),
                      fontWeight: FontWeight.w600,
                      fontSize: 50,
                    ),
                    children: [
                      TextSpan(
                        text: "yuk",
                        style: GoogleFonts.prompt(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Welcome to Ajheryuk",
                style: GoogleFonts.prompt(
                  color: Color(0xff303030),
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              Text(
                "Best and popular apps for live education course from home",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Color(0xff8C8C8C),
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  backgroundColor: Color(0xffEC5F5F),
                  minimumSize: Size.fromHeight(50),
                ),
                onPressed: () => Get.off(HomeScreen()),
                child: Text(
                  "Get started",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
