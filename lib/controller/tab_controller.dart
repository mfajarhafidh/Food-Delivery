import 'package:flutter/material.dart';

import '../pages/login/login_screen.dart';
import '../pages/sign_up/signup_screen.dart';

class TabSlide extends StatelessWidget {
  const TabSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        ListView(children: <Widget>[
          Container(
            height: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Image.asset('assets/img/login_page.png',
                height: 162.38, width: 131.53),
          ),
          Container(
            color: const Color.fromARGB(239, 209, 209, 209),
            child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            )),
                        child: TabBar(
                          indicatorColor: const Color.fromARGB(255, 250, 74, 12),
                          indicator: UnderlineTabIndicator(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 250, 74, 12)),
                              borderRadius: BorderRadius.circular(25)),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            const Tab(text: 'Login'),
                            const Tab(text: 'Sign-up'),
                          ],
                        ),
                      ),
                      Container(
                          height: 500,
                          width: double.infinity,
                          child: const TabBarView(children: <Widget>[
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