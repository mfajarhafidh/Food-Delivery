import 'package:assigment_isi/pages/history/history_screen.dart';
import 'package:assigment_isi/pages/offers/no_offer_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SF-Pro',
        ),
        // home: const TabSlide());
        home: const NoOfferScreen());
  }
}
