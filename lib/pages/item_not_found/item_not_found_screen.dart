import 'package:flutter/material.dart';

import '../../widgets/button_widget.dart';

class ItemNotFoundScreen extends StatelessWidget {
  const ItemNotFoundScreen({super.key});

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
              Row(
                children: [
                  Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/img/btn_back.png'))),
                  Container(
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 175,
              ),
              Column(
                children: [
                  Image.asset('assets/img/search.png', color: Colors.black12),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Item Not Found",
                    style: 
                    TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Try searching the item with",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  Text("a different keyword.",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}