import 'package:assigment_isi/widgets/fonts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/button_widget.dart';

enum RadioButtonProfile { cardProfile, bankAccountProfile, paypalProfile }

class ProfileChangeScreen extends StatefulWidget {
  const ProfileChangeScreen({super.key});

  @override
  State<ProfileChangeScreen> createState() => _ProfileChangeScreenState();
}

class _ProfileChangeScreenState extends State<ProfileChangeScreen> {
  RadioButtonProfile? _character = RadioButtonProfile.cardProfile;

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 41, top: 60),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icon/icon_btn_back.svg'),
                      const SizedBox(
                        width: 100,
                      ),
                      FontWidget(text: "My Profile", sizeFont: 18)
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: FontWidget(text: "Information", sizeFont: 16)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Image.asset('assets/img/img_profile.png',
                                    height: 60, width: 60),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      height: 20,
                                      child: const Text(
                                        "Marvis Ighedosa",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                    Container(
                                      width: 165,
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 8),
                                      child: const Text(
                                        "Dosamarvis@gmail.com",
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 13),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      height: 54,
                                      width: 180,
                                      child: const Text(
                                        "No 15 uti street off ovie palace road effurun delta state",
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const FontWidget(
                          text: "Payment Method", sizeFont: 17),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: 200,
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
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.cardProfile,
                                groupValue: _character,
                                activeColor: Color(0xFFFA4A0C),
                                onChanged: (RadioButtonProfile? value) {
                                  setState(() {
                                    // _character = value;
                                  });
                                },
                              ),
                              onTap: (){
                                setState(() {
                                  _character = RadioButtonProfile.cardProfile;
                                });
                              },
                            ),
                            Divider(
                                color: Colors.black26,
                                indent: 80,
                                endIndent: 30),
                            ListTile(
                              onTap: (){
                                setState(() {
                                  _character = RadioButtonProfile.bankAccountProfile;
                                });
                              },
                              title: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.bankAccountProfile,
                                groupValue: _character,
                                activeColor: Color(0xFFFA4A0C),
                                onChanged: (RadioButtonProfile? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                            Divider(
                                color: Colors.black26,
                                indent: 80,
                                endIndent: 30),
                            ListTile(
                              onTap: (){
                                setState(() {
                                  _character = RadioButtonProfile.paypalProfile;
                                });
                              },
                              title: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFF0038FF)),
                                      child: SvgPicture.asset(
                                          'assets/icon/icon_paypal.svg',
                                          height: 12,
                                          width: 16,
                                          fit: BoxFit.scaleDown),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Paypal",
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
                                activeColor: Color(0xFFFA4A0C),
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
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: const ButtonWidget(textTitle: "Update"),
                    )
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
