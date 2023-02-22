import 'package:assigment_isi/controller/tab_controller.dart';
import 'package:assigment_isi/pages/history/history_screen.dart';
import 'package:assigment_isi/pages/item_not_found/item_not_found_screen.dart';
import 'package:assigment_isi/pages/no_internet/no_internet_screen.dart';
import 'package:assigment_isi/pages/orders/order_screen.dart';
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
        home: const HistoryScreen());
  }
}
