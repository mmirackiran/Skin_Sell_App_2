import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 174, 174),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 174, 174, 174),
        title: Text(
          "SKIN SELL",
          style: GoogleFonts.kanit(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 45,
            shadows: [
              Shadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 1),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 100),
                Image.asset(
                  'assets/images/icon.png',
                  height: 250,
                  width: 250,
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(16),
                    backgroundColor: const Color.fromARGB(255, 170, 0, 255),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(16),
                    backgroundColor: const Color.fromARGB(255, 170, 0, 255),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(16),
                    side: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  child: Text(
                    "Continue With Steam",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(16),
                    side: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  child: Text(
                    "Continue With Google",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
