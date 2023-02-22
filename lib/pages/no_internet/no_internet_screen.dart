import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/button_widget.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(239, 209, 209, 209),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 175,
                  ),
                  Image.asset('assets/img/no_internet.png',
                      color: Colors.black12),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "No Internet Connection",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Your internet connection is currently",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  Text("not available please check or try again.",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonWidget(textTitle: "Try Again")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
