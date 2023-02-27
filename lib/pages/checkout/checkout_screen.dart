import 'package:flutter/material.dart';

import '../../utils/color_schema.dart';

enum RadioButtonProfile { cardProfile, bankAccountProfile, paypalProfile }

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  RadioButtonProfile? _character = RadioButtonProfile.cardProfile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: background,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Address details',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        child: Text(
                          "change",
                          style: TextStyle(fontSize: 16, color: deepOrange800),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Container(
                            //   alignment: Alignment.topLeft,
                            //   child: Image.asset('assets/img/img_profile.png',
                            //       height: 60, width: 60),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    height: 14,
                                    child: const Text(
                                      "Marvis Ighedosa",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  Divider(
                                      color: Colors.grey[500],
                                      indent: 5,
                                      endIndent: 25),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    height: 14,
                                    child: const Text(
                                      "Km 5 refinery road oppsite",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  Divider(
                                      color: Colors.grey[500],
                                      indent: 5,
                                      endIndent: 25),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    height: 14,
                                    child: const Text(
                                      "08572163546271",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: const Text(
                        'Delivery method',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            ListTile(
                              title: Container(
                                child: Row(
                                  children: [
                                    const Text(
                                      "Door delivery",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.cardProfile,
                                groupValue: _character,
                                activeColor: MaterialStateColor.resolveWith(
                                    (states) => deepOrange800),
                                onChanged: (RadioButtonProfile? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                            Divider(
                                color: Colors.grey[500],
                                indent: 80,
                                endIndent: 30),
                            ListTile(
                              title: Container(
                                child: Row(
                                  children: [
                                    const Text(
                                      "Pick up",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.paypalProfile,
                                groupValue: _character,
                                activeColor: MaterialStateColor.resolveWith(
                                    (states) => deepOrange800),
                                onChanged: (RadioButtonProfile? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '23,000',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 70,
                                vertical: 25,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: deepOrange800,
                              ),
                              child: Text(
                                "Proceed to payment",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 40),
                    //   child: const InkWell(),
                    // )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}