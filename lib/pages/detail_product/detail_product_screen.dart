import 'package:assigment_isi/pages/cart/cart_screen.dart';
import 'package:flutter/material.dart';

import 'package:assigment_isi/widgets/cta_button_widget.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  Color _iconColor = Colors.redAccent;
  int position = 1;

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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
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
                const Text(
                  'Veggie tomato mix',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
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
                        padding: const EdgeInsets.only(top: 21.5),
                        child: const Text(
                          'Delivery info',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Text(
                          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm'),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text(
                          'Return policy',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Text(
                          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Ctabutton(textTitle: 'Add to cart', 
                        onPressed: CartScreen(),
                        ),
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