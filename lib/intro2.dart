import 'package:flutter/material.dart';
import 'intro1.dart';

class intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Prvi dio - polovina slike (možete koristiti Media Query za veličinu)
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/zenapokazujetelefon.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Drugi dio - bijela pozadina s tekstom i gumbom
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Willkommen bei Go2To',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Verbessere dein Fahrterlebnis mit der Go2To-App',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),

                  SizedBox(height: 16),

                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 1000,
                        width: 1000,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/go2.png'), // Putanja do slike
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 8),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: intro2(),
  ));
}