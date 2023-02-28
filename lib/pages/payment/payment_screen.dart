import 'package:assigment_isi/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/confirm_button_widget.dart';

enum PaymentGroup { card, bankAccount }

enum DeliveryGroup { doorDelivery, pickUp }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentGroup? _char = PaymentGroup.card;
  DeliveryGroup? _group = DeliveryGroup.doorDelivery;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F8),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Stack(children: const [
             Text(
              "Checkout",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: "SFprotext/SF-Pro-Text-Semibold",
                color: Colors.black,
              ),
            ),
          ]),
          centerTitle: true,
          backgroundColor: const Color(0xFFF5F5F8),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Payment Method",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 205,
                width: 315,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF47B0A)),
                            child: SvgPicture.asset(
                                        'assets/icon/icon_card.svg',
                                        height: 12,
                                        width: 16,
                                        fit: BoxFit.scaleDown),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Card",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      leading: Radio<PaymentGroup>(
                          value: PaymentGroup.card,
                          groupValue: _char,
                          activeColor:  const Color(0xFFFA4A0C),
                          onChanged: (PaymentGroup? value) {
                            setState(() {
                              _char = value;
                            });
                          }),
                    ),
                    const Divider(
                        color: Colors.black26, indent: 80, endIndent: 30),
                    ListTile(
                      title: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFEB4796)),
                            child: SvgPicture.asset(
                                        'assets/icon/icon_bank_account.svg',
                                        height: 12,
                                        width: 16,
                                        fit: BoxFit.scaleDown),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Bank Account",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      leading: Radio<PaymentGroup>(
                          value: PaymentGroup.bankAccount,
                          groupValue: _char,
                          activeColor:  const Color(0xFFFA4A0C),
                          onChanged: (PaymentGroup? value) {
                            setState(() {
                              _char = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Delivery Method",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 156,
                width: 315,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Door Delivery",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      leading: Radio<DeliveryGroup>(
                          value: DeliveryGroup.doorDelivery,
                          groupValue: _group,
                          activeColor:  const Color(0xFFFA4A0C),
                          onChanged: (DeliveryGroup? value) {
                            setState(() {
                              _group = value;
                            });
                          }),
                    ),
                    const Divider(
                        color: Colors.black26, indent: 80, endIndent: 30),
                    ListTile(
                      title: Row(
                        children: [
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Pick up",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      leading: Radio<DeliveryGroup>(
                          value: DeliveryGroup.pickUp,
                          groupValue: _group,
                          activeColor:  const Color(0xFFFA4A0C),
                          onChanged: (DeliveryGroup? value) {
                            setState(() {
                              _group = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Container(
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color(0xFFF5F5F8),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "SFprotext",
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      Text(
                        "23.000",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: "SFprotext",
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 41,
              ),
              ActionButtonConfirmWidget(buttonAction: "Proceed to payment")
            ],
          ),
        ),
      ),
    );
  }
}