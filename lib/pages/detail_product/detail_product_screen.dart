import 'package:flutter/material.dart';

import 'package:assigment_isi/widgets/cta_button_widget.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  Color _iconColor = Colors.redAccent;
  bool _selectedIndex = true;
  int position = 1;
  _onSelected(bool index) {
    //https://inducesmile.com/google-flutter/how-to-change-the-background-color-of-selected-listview-in-flutter/
    setState(() {
      _selectedIndex = index;
    });
  }

  void pressedFavorite() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                            trailing: IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: _iconColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _iconColor = Colors.redAccent;
                                  });
                                })),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 275,
                  width: 275,
                  child: Image.asset('assets/img/food_0.png'),
                ),
                Container(
                  child: Text(
                    'Veggie tomato mix',
                    style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'N1,900',
                    style: TextStyle(
                        color: Color(0xffFA4A0C),
                        fontSize: 22,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 21.5),
                        child: Text(
                          'Delivery info',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        child: Text(
                            'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Return policy',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        child: Text(
                            'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Ctabutton(textTitle: 'Add to cart'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}