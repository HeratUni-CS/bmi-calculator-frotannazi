import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  IconData icon;
  String text;
  IconContent({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            icon,
            size: 80,
            color: Color(0xFF868892)
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
              color: Color(0xFF868892)),
        )
      ],
    );
  }
}