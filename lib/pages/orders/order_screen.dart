import 'package:assigment_isi/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
                      child: Text(
                        textAlign: TextAlign.center,
                        "Orders",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Image.asset('assets/img/orders.png', color: Colors.black12),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "No Orders Yet",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Hit the orange button down",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  Text("below to Create an order",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const SizedBox(
                    height: 200,
                  ),
                  ButtonWidget(textTitle: "Start Ordering")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
