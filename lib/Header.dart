import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/headerblur.jpg'),
          fit: BoxFit.cover, // Use BoxFit.cover to make the image cover the entire area
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.6),
            BlendMode.srcOver,
          ),
        ),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(70), // Adjust the padding as needed
            child: Center(
              child: Text(
                "Go to ... your city !",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
