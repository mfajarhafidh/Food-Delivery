import 'package:flutter/material.dart';

class FontWidget extends StatelessWidget {
  const FontWidget({super.key, required this.text, required this.sizeFont});

  final String text;
  final double sizeFont;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: sizeFont,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    );
  }
}