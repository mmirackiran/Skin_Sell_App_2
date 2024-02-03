import 'package:flutter/material.dart';
import '../widgets/menuItem.dart';
import '../widgets/profileItem.dart';
import 'homeInside.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ALL SKINS",
          style: GoogleFonts.kanit(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ProfileItem(
              avatar: 'assets/images/avatar.jpeg',
              name: "DeagleMan",
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            Divider(),
            MenuItem(
              title: "Home Screen",
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            Divider(),
            MenuItem(
              title: "About Us",
              icon: Icon(
                Icons.info_outline,
                size: 20,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/aboutus");
              },
            ),
            Divider(),
            MenuItem(
              title: "Contact",
              icon: Icon(
                Icons.message,
                size: 20,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/contact");
              },
            ),
            Divider(),
            MenuItem(
              title: "Settings",
              icon: Icon(
                Icons.settings,
                size: 20,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/settings");
              },
            ),
            Divider(),
            SizedBox(height: 340),
            Divider(),
            MenuItem(
              icon: Icon(Icons.logout_outlined),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/welcome', (route) => false);
              },
              title: "Logout",
            ),
            Divider(),
            Text(
              "Version 1.0",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      body: HomeInside(),
    );
  }
}
