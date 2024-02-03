import 'package:flutter/material.dart';
import 'package:skin_app/screens/aboutScreen.dart';
import 'package:skin_app/screens/contactScreen.dart';
import 'package:skin_app/screens/homeScreen.dart';
import 'package:skin_app/screens/loginScreen.dart';
import 'package:skin_app/screens/profileScreen.dart';
import 'package:skin_app/screens/registerScreen.dart';
import 'package:skin_app/screens/settingScreen.dart';
import 'package:skin_app/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings': (context) => SettingsScreen(),
        '/aboutus': (context) => AboutScreen(),
        '/contact': (context) => ContactScreen(),
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
