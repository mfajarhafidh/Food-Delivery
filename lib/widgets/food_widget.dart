import 'package:assigment_isi/pages/detail_product/detail_product_screen.dart';
import 'package:flutter/material.dart';

class FoodCardWidget extends StatelessWidget {
  const FoodCardWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const DetailProductScreen();
            },
          ),
        );
      },
      child: SizedBox(
        height: 300,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 185,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        color: const Color(0xFF393F3F).withOpacity(0.07),
                        blurRadius: 40)
                  ],
                ),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 20,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  color: Colors.grey[500]!.withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        color: const Color(0xFF393F3F).withOpacity(0.07),
                        blurRadius: 40)
                  ],
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
