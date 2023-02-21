import 'package:assigment_isi/login/login_screen.dart';
import 'package:assigment_isi/sign_up/signup_screen.dart';
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
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)
                )
              ),
                bottom: const TabBar(
                  indicatorColor: Color.fromARGB(255, 250, 74, 12),
                  tabs: [Tab(text: "Login"), Tab(text: "Sign-up")],
                ),
              ),
              body: const TabBarView(
                children: [
                  LoginScreen(),
                  SignUpScreen(),
                ],
              ),
            )));
  }
}
