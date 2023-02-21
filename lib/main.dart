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
        // home: LoginScreen(),
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
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
