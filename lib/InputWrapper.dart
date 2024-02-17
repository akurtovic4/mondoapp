import 'package:flutter/material.dart';
import 'package:mondoapp/BlueBox.dart';
import 'ButtonAnmelden.dart';
import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0), // Customize the padding for the BlueBox
            child: Container(
              child: BlueBox(),
              width: 1000,
            ),
          ),
          SizedBox(height: 20), // Adjust the spacing as needed

          Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),// 8.0 vertical, 16.0 horizontal

          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              //  borderRadius: BorderRadius.circular(30),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputField(label: "Ihre E-Mail Adresse", secondHintText: "E-Mail Adresse"),

                ],
              ),
            ),
          ),
          SizedBox(height: 0),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),// 8.0 vertical, 16.0 horizontal

            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //InputField(label: "Ihre E-Mail-Adresse"),
                  InputField(label: "Ihr Passwort", secondHintText: "Passwort"),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Customize the padding for the ButtonAnmelden section
            child: ButtonAnmelden(),
          ),
          SizedBox(height: 0), // Adjust the spacing as needed

          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0), // Customize the padding for the TextButtons section
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/registration');
                    },
                    child: Text(
                      "Neuer Benutzer?",
                      style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your action for the second button
                    },
                    child: Text(
                      "Passwort vergessen?",
                      style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18), // Adjust the spacing as needed

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Customize the padding for the "ODER WEITER MIT" section
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "ODER WEITER MIT",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20), // Adjust the spacing as needed

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Customize the padding for the Facebook and Google buttons
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action for the left button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action for the "Google" button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(color: Colors.black),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
