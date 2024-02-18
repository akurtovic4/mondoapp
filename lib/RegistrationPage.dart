import 'package:flutter/material.dart';
import 'package:mondoapp/BlueBox.dart';
import 'package:mondoapp/ButtonWeitter.dart';
import 'package:mondoapp/MitfahrerRegistrationPage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  int selectedButton = 0; // Variable to track the selected button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/headerblur.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.6),
                  BlendMode.srcOver,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Container(
              child: BlueBox(),
              width: 1000,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bitte wahlen Sie einen Benzutertyp aus"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Ink.image(
                          image: AssetImage('images/cardriver.jpg'),
                          fit: BoxFit.cover,
                          height: 160,
                          width: 80,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedButton = 1;
                              });
                            },
                            child: selectedButton == 1
                                ? Icon(Icons.check_circle, color: Colors.blue)
                                : Container(),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Ink.image(
                          image: AssetImage('images/putnik.jpg'),
                          fit: BoxFit.cover,
                          height: 200,
                          width: 80,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedButton = 2;
                              });
                            },
                            child: selectedButton == 2
                                ? Icon(Icons.check_circle, color: Colors.blue)
                                : Container(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("---------oder---------"),
                  SizedBox(height: 16),
                  Ink.image(
                    image: AssetImage('images/autobus.png'),
                    fit: BoxFit.cover,
                    height: 160,
                    width: 200,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedButton = 3;
                        });
                      },
                      child: selectedButton == 3
                          ? Icon(Icons.check_circle, color: Colors.blue)
                          : Container(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonWeitter(
            onPressed: () {
              print("Weiter button pressed");
              Navigator.pushNamed(context, '/mitfahrerregistration');
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
