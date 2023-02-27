import 'package:assigment_isi/pages/bottom_bar/bottom_bar_screen.dart';
import 'package:assigment_isi/pages/home/home_screen.dart';
import 'package:assigment_isi/pages/menu_food/food_search_screen.dart';
import 'package:assigment_isi/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF5F5F8),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/img/btn_back.png'))),
                  Container(
                    height: 30,
                    width: 300,
                    child: const Text(
                        textAlign: TextAlign.center,
                        "History",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Image.asset('assets/img/history.png', color: Colors.black12),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "No History Yet",
                    style: 
                    TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Hit the orange button down",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const Text("below to Create an order",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const SizedBox(
                    height: 200,
                  ),
                  const ButtonWidget(textTitle: "Start Ordering", screen: BottomBarScreen(),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
