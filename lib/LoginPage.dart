import 'package:flutter/material.dart';
import 'package:mondoapp/BlueBox.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Header(), // Add the Header widget at the top
          SizedBox(height: 0),
          Expanded(
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: InputWrapper(),
            ),
          ),
        ],
      ),
    );
  }
}
