import 'package:flutter/material.dart';

class NoOfferScreen extends StatelessWidget {
  const NoOfferScreen({super.key});

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
              IconButton(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 30, top: 40),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset('assets/img/btn_back.png')),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "My Offers",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: const [
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    "Oh Snap! No Offers Yet",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Bella doesn't have any offers",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  Text("yet please check again.",
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
