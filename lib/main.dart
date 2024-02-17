import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'RegistrationPage.dart'; // Import the new registration page file
import 'MitfahrerRegistrationPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), // Login page
        '/registration': (context) => RegistrationPage(), // Registration page
        '/mitfahrerregistration': (context) => MitfahrerRegistrationPage(),

      },
    );
  }
}
