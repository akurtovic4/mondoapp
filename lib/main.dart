import 'package:flutter/material.dart';
import 'package:mondoapp/intro1.dart';
import 'LoginPage.dart';
import 'RegistrationPage.dart';
import 'MitfahrerRegistrationPage.dart';
import 'intro1.dart';
import 'intro2.dart';
import 'intro3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => intro1(),
        '/registration': (context) => RegistrationPage(),
        '/mitfahrerregistration': (context) => MitfahrerRegistrationPage(),
        '/intro1': (context) => intro1(),
        '/intro2': (context) => intro2()
        //'/intro3': (context) => intro3(),

      },
    );
  }
}
