import 'package:flutter/material.dart';
import 'package:mondoapp/BlueBox.dart';
import 'package:mondoapp/ButtonWeitter.dart';
import 'package:mondoapp/MitfahrerRegistrationPage.dart';

class RegistrationPage extends StatelessWidget {
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
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0), // Customize the padding for the BlueBox
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
                              // Dodajte akciju za prvo dugme
                            },
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
                                // Dodajte akciju za drugo dugme
                              },
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
                        // Dodajte akciju za treće dugme
                      },
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
