import 'package:assigment_isi/pages/tab_slides/tab_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/color_schema.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepRed700,
      body: ListView(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 40),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/logo1.png'),
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Food For Everyone',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/img/face1.png',
                        scale: 1,
                      )),
                  Image.asset('assets/img/face2.png', scale: 1.1),
                ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const TabSlideScreen();
                      },
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 25,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: deepRed700),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        ],
      ),
    );
  }
}