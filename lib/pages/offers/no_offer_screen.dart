import 'package:flutter/material.dart';

class NoOfferScreen extends StatelessWidget {
  const NoOfferScreen({super.key});

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
              IconButton(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 30, top: 40),
                  onPressed: () {},
                  icon: Image.asset('assets/img/btn_back.png')),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "My Offers",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  const Text(
                    "Oh Snap! No Offers Yet",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Bella doesn't have any offers",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const Text("yet please check again.",
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
