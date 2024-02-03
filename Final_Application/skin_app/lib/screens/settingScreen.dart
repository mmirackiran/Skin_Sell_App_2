import 'package:flutter/material.dart';
import '../widgets/menuItem.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SETTINGS",
          style: GoogleFonts.kanit(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Divider(),
                    MenuItem(
                      icon: Icon(Icons.email),
                      title: "Account Settings",
                      onTap: () {},
                    ),
                    Divider(),
                    MenuItem(
                      icon: Icon(Icons.credit_card),
                      title: "Registered Cards",
                      onTap: () {},
                    ),
                    Divider(),
                    MenuItem(
                      icon: Icon(Icons.color_lens),
                      title: "Themes",
                      onTap: () {},
                    ),
                    Divider(),
                    MenuItem(
                      icon: Icon(Icons.language),
                      title: "Language",
                      onTap: () {},
                    ),
                    Divider(),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
