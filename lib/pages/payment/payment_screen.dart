import 'package:assigment_isi/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/confirm_button_widget.dart';

enum paymentGroup { card, bankAccount }

enum deliveryGroup { doorDelivery, pickUp }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  paymentGroup? _char = paymentGroup.card;
  deliveryGroup? _group = deliveryGroup.doorDelivery;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffEDEDED),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Stack(children: [
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
          backgroundColor: Color(0xffEDEDED),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 24),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Payment Method",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 205,
                width: 315,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFF47B0A)),
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
                      ),
                      leading: Radio<paymentGroup>(
                          value: paymentGroup.card,
                          groupValue: _char,
                          activeColor:  Color(0xFFFA4A0C),
                          onChanged: (paymentGroup? value) {
                            setState(() {
                              _char = value;
                            });
                          }),
                    ),
                    Divider(
                        color: Colors.black26, indent: 80, endIndent: 30),
                    ListTile(
                      title: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFEB4796)),
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
                      ),
                      leading: Radio<paymentGroup>(
                          value: paymentGroup.bankAccount,
                          groupValue: _char,
                          activeColor:  Color(0xFFFA4A0C),
                          onChanged: (paymentGroup? value) {
                            setState(() {
                              _char = value;
                            });
                          }),
                    ),
                    Divider(
                        color: Colors.black26, indent: 80, endIndent: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Delivery Method",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 156,
                width: 315,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Container(
                        child: Row(
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
                      ),
                      leading: Radio<deliveryGroup>(
                          value: deliveryGroup.doorDelivery,
                          groupValue: _group,
                          activeColor:  Color(0xFFFA4A0C),
                          onChanged: (deliveryGroup? value) {
                            setState(() {
                              _group = value;
                            });
                          }),
                    ),
                    Divider(
                        color: Colors.black26, indent: 80, endIndent: 30),
                    ListTile(
                      title: Container(
                        child: Row(
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
                      ),
                      leading: Radio<deliveryGroup>(
                          value: deliveryGroup.pickUp,
                          groupValue: _group,
                          activeColor:  Color(0xFFFA4A0C),
                          onChanged: (deliveryGroup? value) {
                            setState(() {
                              _group = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Container(
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xffEDEDED),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "SFprotext",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      Container(
                        child: Text(
                          "23.000",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "SFprotext",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 41,
              ),
              ButtonWidget(textTitle: "Proceed to payment", screen: ActionButtonConfirmWidget(buttonAction: "apa ya",),)
            ],
          ),
        ),
      ),
    );
  }
}