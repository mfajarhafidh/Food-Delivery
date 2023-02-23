import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.textTitle});

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFFA4A0C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Text(
          textTitle,
          style: const TextStyle(color: Color(0xffffffff), fontSize: 17),
        ),
      ),
    );
  }
}
