import 'package:assigment_isi/pages/detail_product/detail_product_screen.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.title, required this.imageFood}) : super(key: key);
  final String title;
  final String imageFood;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailProductScreen();
                    },
                  ),
                );
              },
              child: Container(
                height: 185,
                width: 130,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                              title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
            
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "N1,900",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: -45,
                left: 15,
                child: Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('${imageFood}'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}