import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String secondHintText; // Add an additional hint text parameter for the second TextField

  InputField({required this.label, required this.secondHintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Set border radius for rounded corners
            border: Border.all(
              color: Colors.grey, // Set border color
              width: 1.0, // Set border width
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: secondHintText, // Use the provided second hint text
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
