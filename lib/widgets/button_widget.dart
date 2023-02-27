import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String textTitle;
  final Widget screen;
  const ButtonWidget({super.key, required this.textTitle, required this.screen});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 70,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFFA4A0C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return screen;
                    },
                  ),
                ),
        child: Text(
          textTitle,
          style: const TextStyle(color: Color(0xffffffff), fontSize: 17),
        ),
      ),
    );
  }
}
