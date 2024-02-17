import 'package:flutter/material.dart';

class ButtonWeitter extends StatelessWidget {
  final VoidCallback onPressed;

  ButtonWeitter({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade900,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Weiter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
