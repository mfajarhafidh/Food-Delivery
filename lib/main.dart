import 'package:assigment_isi/pages/detail_product/detail_product_screen.dart';
import 'package:assigment_isi/pages/drawer/shrink_drawer_screen.dart';
import 'package:assigment_isi/pages/profile/profile_change_screen.dart';
import 'package:assigment_isi/pages/profile/profile_screen.dart';
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
        home: DetailProductScreen());
  }
}
