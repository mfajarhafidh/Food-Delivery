import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.textTitle});

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314,
      height: 70,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFFA4A0C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
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
