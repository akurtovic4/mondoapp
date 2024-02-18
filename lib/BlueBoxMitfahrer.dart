import 'package:flutter/material.dart';

class BlueBoxMitfahrer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),// Adjust padding as needed
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade900, // Set the background color
        borderRadius: BorderRadius.circular(0), // Optional: Add rounded corners
      ),
      child:Center(
      child: Text(

        "Mitfahrer registrieren",
        style: TextStyle(
          color: Colors.white, // Set text color
          fontSize: 16, // Set text size
          fontWeight: FontWeight.bold, // Set text fontWeight
        ),
      ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: BlueBoxMitfahrer(),
      ),
    ),
  ));
}
