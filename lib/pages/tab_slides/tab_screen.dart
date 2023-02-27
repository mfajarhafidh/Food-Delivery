import 'package:flutter/material.dart';

import '../../utils/color_schema.dart';
import 'login/login_screen.dart';
import 'sign_up/signup_screen.dart';

class TabSlideScreen extends StatelessWidget {
  const TabSlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        ListView(children: <Widget>[
          Container(
            height: 200,
            color: Colors.white,
            child: Image.asset('assets/img/login_page.png',
                height: 162.38, width: 131.53),
          ),
          Container(
            color: background,
            child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            )),
                        child: TabBar(
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          indicatorColor: deepOrange800,
                          indicatorPadding:
                              EdgeInsets.symmetric(horizontal: 50),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'Login'),
                            Tab(text: 'Sign-up'),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: TabBarView(children: <Widget>[
                            LoginScreen(),
                            SignUpScreen()
                          ]))
                    ])),
          ),
        ]),
      ]),
    );
  }
}
