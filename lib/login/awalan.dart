import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/login/login.dart';
import 'package:myapp/login/signup.dart';

class Awalan extends StatefulWidget {
  const Awalan({super.key});

  @override
  State<Awalan> createState() => _AwalanState();
}

class _AwalanState extends State<Awalan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/revisi_logo.png',
              height: 30,
            ),
            SizedBox(width: 8),
            Text(
              "Notesin",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 16, 32, 72),
              ),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Check if the screen is wide enough for web/tablet
          bool isWideScreen =
              constraints.maxWidth > 600; // Adjust this value as needed
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images.jpg',
                    height: isWideScreen
                        ? 400
                        : 300, // Adjust height for larger screens
                    width: isWideScreen
                        ? 600
                        : 500, // Adjust width for larger screens
                  ),
                  Text(
                    "Hello!",
                    style: TextStyle(
                      fontSize: isWideScreen
                          ? 50
                          : 40, // Adjust font size for larger screens
                      color: Color.fromARGB(255, 16, 32, 72),
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.afacad().fontFamily,
                    ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 16, 32, 72),
                      elevation: 0,
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: GoogleFonts.afacad().fontFamily,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                      side: BorderSide(
                        color: Color.fromARGB(255, 16, 32, 72),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 16, 32, 72),
                        fontFamily: GoogleFonts.afacad().fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
